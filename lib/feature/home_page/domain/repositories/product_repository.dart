import 'package:dartz/dartz.dart';
import 'package:nipuna_app/feature/home_page/data/model/productList/product_model.dart';
import 'package:nipuna_app/feature/home_page/data/model/product_detail/product_detail_model.dart';
import 'package:nipuna_app/shared/exceptions/http_exception.dart';

abstract class ProductRepository {
  Future<Either<AppException, Data>> fetchProduct(
      {required int page, String? filter});
  Future<Either<AppException, Data>> searchProduct(
      {required int page, String? name, String? filter});
  Future<Either<AppException, ProductData>> getProductDetail(
      {required String productId});
}
