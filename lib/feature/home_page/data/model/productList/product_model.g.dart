// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      asin: json['asin'] as String? ?? '',
      product_title: json['product_title'] as String? ?? '',
      product_price: json['product_price'] as String? ?? '',
      product_photo: json['product_photo'] as String? ?? '',
      product_star_rating: json['product_star_rating'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'asin': instance.asin,
      'product_title': instance.product_title,
      'product_price': instance.product_price,
      'product_photo': instance.product_photo,
      'product_star_rating': instance.product_star_rating,
    };

_$ResponseDataImpl _$$ResponseDataImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDataImpl(
      status: json['status'] as String? ?? '',
      request_id: json['request_id'] as String? ?? '',
      parameters: json['parameters'] == null
          ? null
          : Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDataImplToJson(_$ResponseDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'request_id': instance.request_id,
      'parameters': instance.parameters,
      'data': instance.data,
    };

_$ParametersImpl _$$ParametersImplFromJson(Map<String, dynamic> json) =>
    _$ParametersImpl(
      seller_id: json['seller_id'] as String? ?? '',
      country: json['country'] as String? ?? '',
      page: (json['page'] as num?)?.toInt() ?? 0,
      sort_by: json['sort_by'] as String? ?? '',
    );

Map<String, dynamic> _$$ParametersImplToJson(_$ParametersImpl instance) =>
    <String, dynamic>{
      'seller_id': instance.seller_id,
      'country': instance.country,
      'page': instance.page,
      'sort_by': instance.sort_by,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      seller_id: json['seller_id'] as String? ?? '',
      total_products: (json['total_products'] as num?)?.toInt() ?? 0,
      country: json['country'] as String? ?? '',
      domain: json['domain'] as String? ?? '',
      seller_products: (json['seller_products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'seller_id': instance.seller_id,
      'total_products': instance.total_products,
      'country': instance.country,
      'domain': instance.domain,
      'seller_products': instance.seller_products,
      'products': instance.products,
    };
