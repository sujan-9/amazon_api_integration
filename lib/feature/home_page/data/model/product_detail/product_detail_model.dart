import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detail_model.freezed.dart';
part 'product_detail_model.g.dart';

// Top-level response class
@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    required String status,
    required String requestId,
    required Parameters parameters,
    required ProductData data,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

// Parameters class
@freezed
class Parameters with _$Parameters {
  const factory Parameters({
    required String asin,
    required String country,
  }) = _Parameters;

  factory Parameters.fromJson(Map<String, dynamic> json) =>
      _$ParametersFromJson(json);
}

// ProductData class
@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    required String asin,
    required String product_title,
    required String product_price,
    String? product_original_price,
    String? country,
    String? product_star_rating,
    int? product_num_ratings,
    String? product_url,
    String? product_photo,
    List<String>? product_photos,
    String? product_availability,
    bool? is_best_seller,
    bool? is_amazon_choice,
    List<String>? about_product,
    String? product_description,
    required Map<String, String> product_information,

    /// required List<String> productVideos,
    // required bool hasVideo,
    required Map<String, String> product_details,
    //  required String customersSay,
    String? delivery,
    String? primary_delivery_time,
    // required Category category,
    // required List<CategoryPath> categoryPath,
    // required ProductVariations productVariations,
    // required bool hasAplus,
    // required bool hasBrandStory,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

// // Category class
// @freezed
// class Category with _$Category {
//   const factory Category({
//     required String id,
//     required String name,
//   }) = _Category;

//   factory Category.fromJson(Map<String, dynamic> json) =>
//       _$CategoryFromJson(json);
// }

// // CategoryPath class
// @freezed
// class CategoryPath with _$CategoryPath {
//   const factory CategoryPath({
//     required String id,
//     required String name,
//     required String link,
//   }) = _CategoryPath;

//   factory CategoryPath.fromJson(Map<String, dynamic> json) =>
//       _$CategoryPathFromJson(json);
// }

// // ProductVariations class
// @freezed
// class ProductVariations with _$ProductVariations {
//   const factory ProductVariations({
//     required List<ProductVariation> size,
//     required List<ProductVariation> color,
//     required List<ProductVariation> serviceProvider,
//   }) = _ProductVariations;

//   factory ProductVariations.fromJson(Map<String, dynamic> json) =>
//       _$ProductVariationsFromJson(json);
// }

// // ProductVariation class for size, color, and serviceProvider
// @freezed
// class ProductVariation with _$ProductVariation {
//   const factory ProductVariation({
//     required String asin,
//     required String value,
//     required bool isAvailable,
//     String? photo,
//   }) = _ProductVariation;

//   factory ProductVariation.fromJson(Map<String, dynamic> json) =>
//       _$ProductVariationFromJson(json);
// }
