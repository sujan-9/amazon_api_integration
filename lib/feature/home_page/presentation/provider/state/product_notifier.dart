import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/app/core/utils/debouncer.dart';
import 'package:nipuna_app/feature/home_page/data/model/productList/product_model.dart';
import 'package:nipuna_app/feature/home_page/domain/repositories/product_repository.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/state/product_state.dart';
import 'package:nipuna_app/shared/exceptions/http_exception.dart';

class ProductNotifier extends StateNotifier<ProductState> {
  final ProductRepository productRepository;
  final Debouncer debouncer = Debouncer();

  ProductNotifier(
    this.productRepository,
  ) : super(const ProductState.initial());

  bool get _canFetchMore =>
      state.productState != ProductConcreteState.loading &&
      state.productState != ProductConcreteState.fetchingMore &&
      state.productState != ProductConcreteState.fetchedAllProducts;

  Future<void> fetchAllProducts() async {
    if (state.query == null || state.query!.length < 2) {
      fetchProducts();
    } else {
      //  searchProducts();
      debouncer.run(() {
        searchProducts();
      });
    }
  }

  void updateProductNameFilterParameter(String productName) {
    resetProductState();
    state = state.copyWith(query: productName);
    debouncer.run(() {
      fetchAllProducts();
    });
  }

  void resetProductState() {
    state = state.copyWith(
      searchProduct: [],
      page: 1,
      isLoading: false,
      productState: ProductConcreteState.initial,
    );
  }

  Future<void> searchProducts() async {
    if (state.query != null && state.query!.length > 2) {
      if (_canFetchMore &&
          state.productState != ProductConcreteState.fetchedAllProducts) {
        state = state.copyWith(
          productState: state.page > 1
              ? ProductConcreteState.fetchingMore
              : ProductConcreteState.loading,
          isLoading: true,
          isSearching: true,
        );

        final response = await productRepository.searchProduct(
            page: state.page, name: state.query, filter: state.filter);
        _handleProductResponse(response);
      }
    }
  }

  void selectFilter({required String filter}) {
    state = state.copyWith(filter: filter, page: 1, product: []);
  }

  Future<void> fetchProducts() async {
    if (!_canFetchMore) return;

    state = state.copyWith(
      productState: state.page > 1
          ? ProductConcreteState.fetchingMore
          : ProductConcreteState.loading,
      isLoading: true,
    );

    final response = await productRepository.fetchProduct(
        page: state.page, filter: state.filter);

    _handleProductResponse(response);
  }

  void _handleProductResponse(Either<AppException, Data> response) {
    response.fold((failure) {
      state = state.copyWith(
        productState: ProductConcreteState.failure,
        isLoading: false,
        isSearching: false,
      );
    }, (data) {
      final newProducts = data.seller_products;
      final searchData = data.products;

      final allProducts = [
        ...newProducts,
        ...state.product,
      ];

      final searchProduct = [...state.searchProduct, ...searchData];

      state = state.copyWith(
          product: state.isSearching ? searchProduct : allProducts,
          searchProduct: searchProduct,
          productState: allProducts.length == data.total_products
              ? ProductConcreteState.fetchedAllProducts
              : ProductConcreteState.loaded,
          page: state.page + 1,
          isLoading: false,
          isSearching: false);
    });
  }

  void resetSearching() {
    state = state.copyWith(isSearching: false, searchProduct: []);
  }

  void selectProduct(String productId) {
    state = state.copyWith(productId: productId);
  }

  void clearProductDetail() {
    state = state.copyWith(productDetail: null);
  }

  Future<void> getProductDetail({required String productId}) async {
    state = state.copyWith(isLoading: true);
    final response =
        await productRepository.getProductDetail(productId: productId);
    response.fold((failure) {
      state = state.copyWith(
        productState: ProductConcreteState.failure,
        isLoading: false,
      );
    }, (r) {
      state = state.copyWith(productDetail: r, isLoading: false);
    });
  }
}
