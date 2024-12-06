import 'package:nipuna_app/feature/home_page/data/model/productList/product_model.dart';
import 'package:dartz/dartz.dart';
import 'package:nipuna_app/feature/home_page/data/model/product_detail/product_detail_model.dart';
import 'package:nipuna_app/shared/data/remote/network_service.dart';
import 'package:nipuna_app/shared/exceptions/http_exception.dart';

abstract class ProductDataSource {
  Future<Either<AppException, Data>> fetchProduct(
      {required int page, String? filter});
  Future<Either<AppException, Data>> searchProduct(
      {required int page, String? name, String? filter});
  Future<Either<AppException, ProductData>> getProductDetail(
      {required String productId});
}

class ProductRemoteDataSource extends ProductDataSource {
  final NetworkService networkService;

  ProductRemoteDataSource(this.networkService);

  @override
  Future<Either<AppException, Data>> fetchProduct(
      {required int page, String? filter}) async {
    final response = await networkService.get(
        '/seller-products?seller_id=A02211013Q5HP3OMSZC7W&country=US&page=$page&sort_by=${filter ?? 'HIGHEST_PRICE'}');

    return response.fold(
      (l) => Left(l),
      (r) {
        final response = Data.fromJson(r.data['data']);

        return Right(response);
      },
    );
  }

  @override
  Future<Either<AppException, Data>> searchProduct(
      {required int page, String? name, String? filter}) async {
    final response = await networkService.get(
        '/search?query=$name&page=$page&country=US&sort_by=${filter ?? 'HIGHEST_PRICE'}');

    return response.fold(
      (l) => Left(l),
      (r) {
        final response = Data.fromJson(r.data['data']);
        return Right(response);
      },
    );
  }

  @override
  Future<Either<AppException, ProductData>> getProductDetail(
      {required String productId}) async {
    final response =
        await networkService.get("/product-details?asin=$productId&country=US");
    return response.fold((l) => Left(l), (r) {
      final response = ProductData.fromJson(r.data['data']);

      return Right(response);
    });
  }
}
