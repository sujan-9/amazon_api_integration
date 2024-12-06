import 'package:dartz/dartz.dart';
import 'package:nipuna_app/feature/home_page/data/dataSource/product_remote_datasource.dart';
import 'package:nipuna_app/feature/home_page/data/model/productList/product_model.dart';
import 'package:nipuna_app/feature/home_page/data/model/product_detail/product_detail_model.dart';
import 'package:nipuna_app/feature/home_page/domain/repositories/product_repository.dart';
import 'package:nipuna_app/shared/exceptions/http_exception.dart';

class ProductRepositoryImpl extends ProductRepository {
  final ProductDataSource dataSource;

  ProductRepositoryImpl(this.dataSource);

  @override
  Future<Either<AppException, Data>> fetchProduct(
      {required int page, String? filter}) {
    return dataSource.fetchProduct(page: page, filter: filter);
  }

  @override
  Future<Either<AppException, Data>> searchProduct(
      {required int page, String? name, String? filter}) {
    return dataSource.searchProduct(page: page, name: name, filter: filter);
  }

  @override
  Future<Either<AppException, ProductData>> getProductDetail(
      {required String productId}) {
    return dataSource.getProductDetail(productId: productId);
  }
}
