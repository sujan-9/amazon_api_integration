import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @Default('') String asin,
    @Default('') String product_title,
    @Default('') String? product_price,
    @Default('') String? product_photo,
    @Default('') String product_star_rating,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    @Default('') String status,
    @Default('') String request_id,
    Parameters? parameters,
    Data? data,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
}

@freezed
class Parameters with _$Parameters {
  const factory Parameters({
    @Default('') String seller_id,
    @Default('') String country,
    @Default(0) int page,
    @Default('') String sort_by,
  }) = _Parameters;

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @Default('') String seller_id,
    @Default(0) int total_products,
    @Default('') String country,
    @Default('') String domain,
    @Default([]) List<Product> seller_products,
    @Default([]) List<Product> products,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
