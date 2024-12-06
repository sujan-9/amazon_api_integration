import 'package:dartz/dartz.dart';
import 'package:nipuna_app/shared/domain/models/response.dart';
import 'package:nipuna_app/shared/exceptions/http_exception.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

  Future<Either<AppException, Response>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });
}
