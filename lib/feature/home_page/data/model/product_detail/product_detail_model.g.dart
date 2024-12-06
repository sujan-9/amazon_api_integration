// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductResponseImpl _$$ProductResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductResponseImpl(
      status: json['status'] as String,
      requestId: json['requestId'] as String,
      parameters:
          Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
      data: ProductData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductResponseImplToJson(
        _$ProductResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'requestId': instance.requestId,
      'parameters': instance.parameters,
      'data': instance.data,
    };

_$ParametersImpl _$$ParametersImplFromJson(Map<String, dynamic> json) =>
    _$ParametersImpl(
      asin: json['asin'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$ParametersImplToJson(_$ParametersImpl instance) =>
    <String, dynamic>{
      'asin': instance.asin,
      'country': instance.country,
    };

_$ProductDataImpl _$$ProductDataImplFromJson(Map<String, dynamic> json) =>
    _$ProductDataImpl(
      asin: json['asin'] as String,
      product_title: json['product_title'] as String,
      product_price: json['product_price'] as String,
      product_original_price: json['product_original_price'] as String?,
      country: json['country'] as String?,
      product_star_rating: json['product_star_rating'] as String?,
      product_num_ratings: (json['product_num_ratings'] as num?)?.toInt(),
      product_url: json['product_url'] as String?,
      product_photo: json['product_photo'] as String?,
      product_photos: (json['product_photos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      product_availability: json['product_availability'] as String?,
      is_best_seller: json['is_best_seller'] as bool?,
      is_amazon_choice: json['is_amazon_choice'] as bool?,
      about_product: (json['about_product'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      product_description: json['product_description'] as String?,
      product_information:
          Map<String, String>.from(json['product_information'] as Map),
      product_details: Map<String, String>.from(json['product_details'] as Map),
      delivery: json['delivery'] as String?,
      primary_delivery_time: json['primary_delivery_time'] as String?,
    );

Map<String, dynamic> _$$ProductDataImplToJson(_$ProductDataImpl instance) =>
    <String, dynamic>{
      'asin': instance.asin,
      'product_title': instance.product_title,
      'product_price': instance.product_price,
      'product_original_price': instance.product_original_price,
      'country': instance.country,
      'product_star_rating': instance.product_star_rating,
      'product_num_ratings': instance.product_num_ratings,
      'product_url': instance.product_url,
      'product_photo': instance.product_photo,
      'product_photos': instance.product_photos,
      'product_availability': instance.product_availability,
      'is_best_seller': instance.is_best_seller,
      'is_amazon_choice': instance.is_amazon_choice,
      'about_product': instance.about_product,
      'product_description': instance.product_description,
      'product_information': instance.product_information,
      'product_details': instance.product_details,
      'delivery': instance.delivery,
      'primary_delivery_time': instance.primary_delivery_time,
    };
