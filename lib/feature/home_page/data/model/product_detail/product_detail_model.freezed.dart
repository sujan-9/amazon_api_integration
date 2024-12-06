// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductResponse {
  String get status => throw _privateConstructorUsedError;
  String get requestId => throw _privateConstructorUsedError;
  Parameters get parameters => throw _privateConstructorUsedError;
  ProductData get data => throw _privateConstructorUsedError;

  /// Serializes this ProductResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res, ProductResponse>;
  @useResult
  $Res call(
      {String status,
      String requestId,
      Parameters parameters,
      ProductData data});

  $ParametersCopyWith<$Res> get parameters;
  $ProductDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res, $Val extends ProductResponse>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? requestId = null,
    Object? parameters = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Parameters,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductData,
    ) as $Val);
  }

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParametersCopyWith<$Res> get parameters {
    return $ParametersCopyWith<$Res>(_value.parameters, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDataCopyWith<$Res> get data {
    return $ProductDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductResponseImplCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$$ProductResponseImplCopyWith(_$ProductResponseImpl value,
          $Res Function(_$ProductResponseImpl) then) =
      __$$ProductResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      String requestId,
      Parameters parameters,
      ProductData data});

  @override
  $ParametersCopyWith<$Res> get parameters;
  @override
  $ProductDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProductResponseImplCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res, _$ProductResponseImpl>
    implements _$$ProductResponseImplCopyWith<$Res> {
  __$$ProductResponseImplCopyWithImpl(
      _$ProductResponseImpl _value, $Res Function(_$ProductResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? requestId = null,
    Object? parameters = null,
    Object? data = null,
  }) {
    return _then(_$ProductResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Parameters,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductResponseImpl implements _ProductResponse {
  const _$ProductResponseImpl(
      {required this.status,
      required this.requestId,
      required this.parameters,
      required this.data});

  factory _$ProductResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductResponseImplFromJson(json);

  @override
  final String status;
  @override
  final String requestId;
  @override
  final Parameters parameters;
  @override
  final ProductData data;

  @override
  String toString() {
    return 'ProductResponse(status: $status, requestId: $requestId, parameters: $parameters, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, requestId, parameters, data);

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      __$$ProductResponseImplCopyWithImpl<_$ProductResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse(
      {required final String status,
      required final String requestId,
      required final Parameters parameters,
      required final ProductData data}) = _$ProductResponseImpl;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$ProductResponseImpl.fromJson;

  @override
  String get status;
  @override
  String get requestId;
  @override
  Parameters get parameters;
  @override
  ProductData get data;

  /// Create a copy of ProductResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductResponseImplCopyWith<_$ProductResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parameters _$ParametersFromJson(Map<String, dynamic> json) {
  return _Parameters.fromJson(json);
}

/// @nodoc
mixin _$Parameters {
  String get asin => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  /// Serializes this Parameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParametersCopyWith<Parameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParametersCopyWith<$Res> {
  factory $ParametersCopyWith(
          Parameters value, $Res Function(Parameters) then) =
      _$ParametersCopyWithImpl<$Res, Parameters>;
  @useResult
  $Res call({String asin, String country});
}

/// @nodoc
class _$ParametersCopyWithImpl<$Res, $Val extends Parameters>
    implements $ParametersCopyWith<$Res> {
  _$ParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asin = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParametersImplCopyWith<$Res>
    implements $ParametersCopyWith<$Res> {
  factory _$$ParametersImplCopyWith(
          _$ParametersImpl value, $Res Function(_$ParametersImpl) then) =
      __$$ParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String asin, String country});
}

/// @nodoc
class __$$ParametersImplCopyWithImpl<$Res>
    extends _$ParametersCopyWithImpl<$Res, _$ParametersImpl>
    implements _$$ParametersImplCopyWith<$Res> {
  __$$ParametersImplCopyWithImpl(
      _$ParametersImpl _value, $Res Function(_$ParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asin = null,
    Object? country = null,
  }) {
    return _then(_$ParametersImpl(
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParametersImpl implements _Parameters {
  const _$ParametersImpl({required this.asin, required this.country});

  factory _$ParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParametersImplFromJson(json);

  @override
  final String asin;
  @override
  final String country;

  @override
  String toString() {
    return 'Parameters(asin: $asin, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParametersImpl &&
            (identical(other.asin, asin) || other.asin == asin) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, asin, country);

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParametersImplCopyWith<_$ParametersImpl> get copyWith =>
      __$$ParametersImplCopyWithImpl<_$ParametersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParametersImplToJson(
      this,
    );
  }
}

abstract class _Parameters implements Parameters {
  const factory _Parameters(
      {required final String asin,
      required final String country}) = _$ParametersImpl;

  factory _Parameters.fromJson(Map<String, dynamic> json) =
      _$ParametersImpl.fromJson;

  @override
  String get asin;
  @override
  String get country;

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParametersImplCopyWith<_$ParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  String get asin => throw _privateConstructorUsedError;
  String get product_title => throw _privateConstructorUsedError;
  String get product_price => throw _privateConstructorUsedError;
  String? get product_original_price => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get product_star_rating => throw _privateConstructorUsedError;
  int? get product_num_ratings => throw _privateConstructorUsedError;
  String? get product_url => throw _privateConstructorUsedError;
  String? get product_photo => throw _privateConstructorUsedError;
  List<String>? get product_photos => throw _privateConstructorUsedError;
  String? get product_availability => throw _privateConstructorUsedError;
  bool? get is_best_seller => throw _privateConstructorUsedError;
  bool? get is_amazon_choice => throw _privateConstructorUsedError;
  List<String>? get about_product => throw _privateConstructorUsedError;
  String? get product_description => throw _privateConstructorUsedError;
  Map<String, String> get product_information =>
      throw _privateConstructorUsedError;

  /// required List<String> productVideos,
// required bool hasVideo,
  Map<String, String> get product_details =>
      throw _privateConstructorUsedError; //  required String customersSay,
  String? get delivery => throw _privateConstructorUsedError;
  String? get primary_delivery_time => throw _privateConstructorUsedError;

  /// Serializes this ProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {String asin,
      String product_title,
      String product_price,
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
      Map<String, String> product_information,
      Map<String, String> product_details,
      String? delivery,
      String? primary_delivery_time});
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asin = null,
    Object? product_title = null,
    Object? product_price = null,
    Object? product_original_price = freezed,
    Object? country = freezed,
    Object? product_star_rating = freezed,
    Object? product_num_ratings = freezed,
    Object? product_url = freezed,
    Object? product_photo = freezed,
    Object? product_photos = freezed,
    Object? product_availability = freezed,
    Object? is_best_seller = freezed,
    Object? is_amazon_choice = freezed,
    Object? about_product = freezed,
    Object? product_description = freezed,
    Object? product_information = null,
    Object? product_details = null,
    Object? delivery = freezed,
    Object? primary_delivery_time = freezed,
  }) {
    return _then(_value.copyWith(
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
      product_title: null == product_title
          ? _value.product_title
          : product_title // ignore: cast_nullable_to_non_nullable
              as String,
      product_price: null == product_price
          ? _value.product_price
          : product_price // ignore: cast_nullable_to_non_nullable
              as String,
      product_original_price: freezed == product_original_price
          ? _value.product_original_price
          : product_original_price // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      product_star_rating: freezed == product_star_rating
          ? _value.product_star_rating
          : product_star_rating // ignore: cast_nullable_to_non_nullable
              as String?,
      product_num_ratings: freezed == product_num_ratings
          ? _value.product_num_ratings
          : product_num_ratings // ignore: cast_nullable_to_non_nullable
              as int?,
      product_url: freezed == product_url
          ? _value.product_url
          : product_url // ignore: cast_nullable_to_non_nullable
              as String?,
      product_photo: freezed == product_photo
          ? _value.product_photo
          : product_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      product_photos: freezed == product_photos
          ? _value.product_photos
          : product_photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      product_availability: freezed == product_availability
          ? _value.product_availability
          : product_availability // ignore: cast_nullable_to_non_nullable
              as String?,
      is_best_seller: freezed == is_best_seller
          ? _value.is_best_seller
          : is_best_seller // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_amazon_choice: freezed == is_amazon_choice
          ? _value.is_amazon_choice
          : is_amazon_choice // ignore: cast_nullable_to_non_nullable
              as bool?,
      about_product: freezed == about_product
          ? _value.about_product
          : about_product // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      product_description: freezed == product_description
          ? _value.product_description
          : product_description // ignore: cast_nullable_to_non_nullable
              as String?,
      product_information: null == product_information
          ? _value.product_information
          : product_information // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      product_details: null == product_details
          ? _value.product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      primary_delivery_time: freezed == primary_delivery_time
          ? _value.primary_delivery_time
          : primary_delivery_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String asin,
      String product_title,
      String product_price,
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
      Map<String, String> product_information,
      Map<String, String> product_details,
      String? delivery,
      String? primary_delivery_time});
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asin = null,
    Object? product_title = null,
    Object? product_price = null,
    Object? product_original_price = freezed,
    Object? country = freezed,
    Object? product_star_rating = freezed,
    Object? product_num_ratings = freezed,
    Object? product_url = freezed,
    Object? product_photo = freezed,
    Object? product_photos = freezed,
    Object? product_availability = freezed,
    Object? is_best_seller = freezed,
    Object? is_amazon_choice = freezed,
    Object? about_product = freezed,
    Object? product_description = freezed,
    Object? product_information = null,
    Object? product_details = null,
    Object? delivery = freezed,
    Object? primary_delivery_time = freezed,
  }) {
    return _then(_$ProductDataImpl(
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
      product_title: null == product_title
          ? _value.product_title
          : product_title // ignore: cast_nullable_to_non_nullable
              as String,
      product_price: null == product_price
          ? _value.product_price
          : product_price // ignore: cast_nullable_to_non_nullable
              as String,
      product_original_price: freezed == product_original_price
          ? _value.product_original_price
          : product_original_price // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      product_star_rating: freezed == product_star_rating
          ? _value.product_star_rating
          : product_star_rating // ignore: cast_nullable_to_non_nullable
              as String?,
      product_num_ratings: freezed == product_num_ratings
          ? _value.product_num_ratings
          : product_num_ratings // ignore: cast_nullable_to_non_nullable
              as int?,
      product_url: freezed == product_url
          ? _value.product_url
          : product_url // ignore: cast_nullable_to_non_nullable
              as String?,
      product_photo: freezed == product_photo
          ? _value.product_photo
          : product_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      product_photos: freezed == product_photos
          ? _value._product_photos
          : product_photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      product_availability: freezed == product_availability
          ? _value.product_availability
          : product_availability // ignore: cast_nullable_to_non_nullable
              as String?,
      is_best_seller: freezed == is_best_seller
          ? _value.is_best_seller
          : is_best_seller // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_amazon_choice: freezed == is_amazon_choice
          ? _value.is_amazon_choice
          : is_amazon_choice // ignore: cast_nullable_to_non_nullable
              as bool?,
      about_product: freezed == about_product
          ? _value._about_product
          : about_product // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      product_description: freezed == product_description
          ? _value.product_description
          : product_description // ignore: cast_nullable_to_non_nullable
              as String?,
      product_information: null == product_information
          ? _value._product_information
          : product_information // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      product_details: null == product_details
          ? _value._product_details
          : product_details // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      primary_delivery_time: freezed == primary_delivery_time
          ? _value.primary_delivery_time
          : primary_delivery_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(
      {required this.asin,
      required this.product_title,
      required this.product_price,
      this.product_original_price,
      this.country,
      this.product_star_rating,
      this.product_num_ratings,
      this.product_url,
      this.product_photo,
      final List<String>? product_photos,
      this.product_availability,
      this.is_best_seller,
      this.is_amazon_choice,
      final List<String>? about_product,
      this.product_description,
      required final Map<String, String> product_information,
      required final Map<String, String> product_details,
      this.delivery,
      this.primary_delivery_time})
      : _product_photos = product_photos,
        _about_product = about_product,
        _product_information = product_information,
        _product_details = product_details;

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  @override
  final String asin;
  @override
  final String product_title;
  @override
  final String product_price;
  @override
  final String? product_original_price;
  @override
  final String? country;
  @override
  final String? product_star_rating;
  @override
  final int? product_num_ratings;
  @override
  final String? product_url;
  @override
  final String? product_photo;
  final List<String>? _product_photos;
  @override
  List<String>? get product_photos {
    final value = _product_photos;
    if (value == null) return null;
    if (_product_photos is EqualUnmodifiableListView) return _product_photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? product_availability;
  @override
  final bool? is_best_seller;
  @override
  final bool? is_amazon_choice;
  final List<String>? _about_product;
  @override
  List<String>? get about_product {
    final value = _about_product;
    if (value == null) return null;
    if (_about_product is EqualUnmodifiableListView) return _about_product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? product_description;
  final Map<String, String> _product_information;
  @override
  Map<String, String> get product_information {
    if (_product_information is EqualUnmodifiableMapView)
      return _product_information;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_product_information);
  }

  /// required List<String> productVideos,
// required bool hasVideo,
  final Map<String, String> _product_details;

  /// required List<String> productVideos,
// required bool hasVideo,
  @override
  Map<String, String> get product_details {
    if (_product_details is EqualUnmodifiableMapView) return _product_details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_product_details);
  }

//  required String customersSay,
  @override
  final String? delivery;
  @override
  final String? primary_delivery_time;

  @override
  String toString() {
    return 'ProductData(asin: $asin, product_title: $product_title, product_price: $product_price, product_original_price: $product_original_price, country: $country, product_star_rating: $product_star_rating, product_num_ratings: $product_num_ratings, product_url: $product_url, product_photo: $product_photo, product_photos: $product_photos, product_availability: $product_availability, is_best_seller: $is_best_seller, is_amazon_choice: $is_amazon_choice, about_product: $about_product, product_description: $product_description, product_information: $product_information, product_details: $product_details, delivery: $delivery, primary_delivery_time: $primary_delivery_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.asin, asin) || other.asin == asin) &&
            (identical(other.product_title, product_title) ||
                other.product_title == product_title) &&
            (identical(other.product_price, product_price) ||
                other.product_price == product_price) &&
            (identical(other.product_original_price, product_original_price) ||
                other.product_original_price == product_original_price) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.product_star_rating, product_star_rating) ||
                other.product_star_rating == product_star_rating) &&
            (identical(other.product_num_ratings, product_num_ratings) ||
                other.product_num_ratings == product_num_ratings) &&
            (identical(other.product_url, product_url) ||
                other.product_url == product_url) &&
            (identical(other.product_photo, product_photo) ||
                other.product_photo == product_photo) &&
            const DeepCollectionEquality()
                .equals(other._product_photos, _product_photos) &&
            (identical(other.product_availability, product_availability) ||
                other.product_availability == product_availability) &&
            (identical(other.is_best_seller, is_best_seller) ||
                other.is_best_seller == is_best_seller) &&
            (identical(other.is_amazon_choice, is_amazon_choice) ||
                other.is_amazon_choice == is_amazon_choice) &&
            const DeepCollectionEquality()
                .equals(other._about_product, _about_product) &&
            (identical(other.product_description, product_description) ||
                other.product_description == product_description) &&
            const DeepCollectionEquality()
                .equals(other._product_information, _product_information) &&
            const DeepCollectionEquality()
                .equals(other._product_details, _product_details) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.primary_delivery_time, primary_delivery_time) ||
                other.primary_delivery_time == primary_delivery_time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        asin,
        product_title,
        product_price,
        product_original_price,
        country,
        product_star_rating,
        product_num_ratings,
        product_url,
        product_photo,
        const DeepCollectionEquality().hash(_product_photos),
        product_availability,
        is_best_seller,
        is_amazon_choice,
        const DeepCollectionEquality().hash(_about_product),
        product_description,
        const DeepCollectionEquality().hash(_product_information),
        const DeepCollectionEquality().hash(_product_details),
        delivery,
        primary_delivery_time
      ]);

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {required final String asin,
      required final String product_title,
      required final String product_price,
      final String? product_original_price,
      final String? country,
      final String? product_star_rating,
      final int? product_num_ratings,
      final String? product_url,
      final String? product_photo,
      final List<String>? product_photos,
      final String? product_availability,
      final bool? is_best_seller,
      final bool? is_amazon_choice,
      final List<String>? about_product,
      final String? product_description,
      required final Map<String, String> product_information,
      required final Map<String, String> product_details,
      final String? delivery,
      final String? primary_delivery_time}) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override
  String get asin;
  @override
  String get product_title;
  @override
  String get product_price;
  @override
  String? get product_original_price;
  @override
  String? get country;
  @override
  String? get product_star_rating;
  @override
  int? get product_num_ratings;
  @override
  String? get product_url;
  @override
  String? get product_photo;
  @override
  List<String>? get product_photos;
  @override
  String? get product_availability;
  @override
  bool? get is_best_seller;
  @override
  bool? get is_amazon_choice;
  @override
  List<String>? get about_product;
  @override
  String? get product_description;
  @override
  Map<String, String> get product_information;

  /// required List<String> productVideos,
// required bool hasVideo,
  @override
  Map<String, String> get product_details; //  required String customersSay,
  @override
  String? get delivery;
  @override
  String? get primary_delivery_time;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
