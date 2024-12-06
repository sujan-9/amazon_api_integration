import 'package:equatable/equatable.dart';
import 'package:nipuna_app/feature/home_page/data/model/productList/product_model.dart';
import 'package:nipuna_app/feature/home_page/data/model/product_detail/product_detail_model.dart';

enum ProductConcreteState {
  initial,
  loading,
  loaded,
  failure,
  fetchingMore,
  fetchedAllProducts,
}

class ProductState extends Equatable {
  final List<Product> product;
  final List<Product> searchProduct;
  final Product? selectedProduct;
  final ProductData? productDetail;
  final bool isSearching;
  final String? productId;
  final int page;
  final String filter;
  final ProductConcreteState productState;
  final String? query;
  final bool isLoading;
  const ProductState({
    this.product = const [],
    this.searchProduct = const [],
    this.isSearching = false,
    this.productDetail,
    this.selectedProduct,
    this.productId,
    this.page = 1,
    this.filter = 'HIGHEST_PRICE',
    this.productState = ProductConcreteState.initial,
    this.query,
    this.isLoading = false,
  });

  const ProductState.initial({
    this.product = const [],
    this.searchProduct = const [],
    this.isSearching = false,
    this.productId,
    this.page = 1,
    this.filter = 'HIGHEST_PRICE',
    this.selectedProduct,
    this.productDetail,
    this.productState = ProductConcreteState.initial,
    this.query,
    this.isLoading = false,
  });

  ProductState copyWith({
    List<Product>? product,
    List<Product>? searchProduct,
    Product? selectedProduct,
    bool? isSearching,
    String? productId,
    int? page,
    String? filter,
    ProductData? productDetail,
    ProductConcreteState? productState,
    String? query,
    bool? isLoading,
  }) {
    return ProductState(
        product: product ?? this.product,
        productDetail: productDetail ?? this.productDetail,
        selectedProduct: selectedProduct ?? this.selectedProduct,
        searchProduct: searchProduct ?? this.searchProduct,
        isSearching: isSearching ?? this.isSearching,
        productId: productId ?? this.productId,
        productState: productState ?? this.productState,
        page: page ?? this.page,
        query: query ?? this.query,
        filter: filter ?? this.filter,
        isLoading: isLoading ?? this.isLoading);
  }

  @override
  List<Object?> get props => [
        product,
        productDetail,
        selectedProduct,
        searchProduct,
        productId,
        filter,
        page,
        productState,
        query,
      ];
}
