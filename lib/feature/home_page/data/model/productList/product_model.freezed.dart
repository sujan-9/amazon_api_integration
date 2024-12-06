// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get asin => throw _privateConstructorUsedError;
  String get product_title => throw _privateConstructorUsedError;
  String? get product_price => throw _privateConstructorUsedError;
  String? get product_photo => throw _privateConstructorUsedError;
  String get product_star_rating => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String asin,
      String product_title,
      String? product_price,
      String? product_photo,
      String product_star_rating});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asin = null,
    Object? product_title = null,
    Object? product_price = freezed,
    Object? product_photo = freezed,
    Object? product_star_rating = null,
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
      product_price: freezed == product_price
          ? _value.product_price
          : product_price // ignore: cast_nullable_to_non_nullable
              as String?,
      product_photo: freezed == product_photo
          ? _value.product_photo
          : product_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      product_star_rating: null == product_star_rating
          ? _value.product_star_rating
          : product_star_rating // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String asin,
      String product_title,
      String? product_price,
      String? product_photo,
      String product_star_rating});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asin = null,
    Object? product_title = null,
    Object? product_price = freezed,
    Object? product_photo = freezed,
    Object? product_star_rating = null,
  }) {
    return _then(_$ProductImpl(
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
      product_title: null == product_title
          ? _value.product_title
          : product_title // ignore: cast_nullable_to_non_nullable
              as String,
      product_price: freezed == product_price
          ? _value.product_price
          : product_price // ignore: cast_nullable_to_non_nullable
              as String?,
      product_photo: freezed == product_photo
          ? _value.product_photo
          : product_photo // ignore: cast_nullable_to_non_nullable
              as String?,
      product_star_rating: null == product_star_rating
          ? _value.product_star_rating
          : product_star_rating // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {this.asin = '',
      this.product_title = '',
      this.product_price = '',
      this.product_photo = '',
      this.product_star_rating = ''});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey()
  final String asin;
  @override
  @JsonKey()
  final String product_title;
  @override
  @JsonKey()
  final String? product_price;
  @override
  @JsonKey()
  final String? product_photo;
  @override
  @JsonKey()
  final String product_star_rating;

  @override
  String toString() {
    return 'Product(asin: $asin, product_title: $product_title, product_price: $product_price, product_photo: $product_photo, product_star_rating: $product_star_rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.asin, asin) || other.asin == asin) &&
            (identical(other.product_title, product_title) ||
                other.product_title == product_title) &&
            (identical(other.product_price, product_price) ||
                other.product_price == product_price) &&
            (identical(other.product_photo, product_photo) ||
                other.product_photo == product_photo) &&
            (identical(other.product_star_rating, product_star_rating) ||
                other.product_star_rating == product_star_rating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, asin, product_title,
      product_price, product_photo, product_star_rating);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final String asin,
      final String product_title,
      final String? product_price,
      final String? product_photo,
      final String product_star_rating}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get asin;
  @override
  String get product_title;
  @override
  String? get product_price;
  @override
  String? get product_photo;
  @override
  String get product_star_rating;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return _ResponseData.fromJson(json);
}

/// @nodoc
mixin _$ResponseData {
  String get status => throw _privateConstructorUsedError;
  String get request_id => throw _privateConstructorUsedError;
  Parameters? get parameters => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  /// Serializes this ResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res, ResponseData>;
  @useResult
  $Res call(
      {String status, String request_id, Parameters? parameters, Data? data});

  $ParametersCopyWith<$Res>? get parameters;
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res, $Val extends ResponseData>
    implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? request_id = null,
    Object? parameters = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      request_id: null == request_id
          ? _value.request_id
          : request_id // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Parameters?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParametersCopyWith<$Res>? get parameters {
    if (_value.parameters == null) {
      return null;
    }

    return $ParametersCopyWith<$Res>(_value.parameters!, (value) {
      return _then(_value.copyWith(parameters: value) as $Val);
    });
  }

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDataImplCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$ResponseDataImplCopyWith(
          _$ResponseDataImpl value, $Res Function(_$ResponseDataImpl) then) =
      __$$ResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status, String request_id, Parameters? parameters, Data? data});

  @override
  $ParametersCopyWith<$Res>? get parameters;
  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ResponseDataImplCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res, _$ResponseDataImpl>
    implements _$$ResponseDataImplCopyWith<$Res> {
  __$$ResponseDataImplCopyWithImpl(
      _$ResponseDataImpl _value, $Res Function(_$ResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? request_id = null,
    Object? parameters = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDataImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      request_id: null == request_id
          ? _value.request_id
          : request_id // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: freezed == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Parameters?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataImpl implements _ResponseData {
  const _$ResponseDataImpl(
      {this.status = '', this.request_id = '', this.parameters, this.data});

  factory _$ResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataImplFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String request_id;
  @override
  final Parameters? parameters;
  @override
  final Data? data;

  @override
  String toString() {
    return 'ResponseData(status: $status, request_id: $request_id, parameters: $parameters, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.request_id, request_id) ||
                other.request_id == request_id) &&
            (identical(other.parameters, parameters) ||
                other.parameters == parameters) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, request_id, parameters, data);

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDataImplCopyWith<_$ResponseDataImpl> get copyWith =>
      __$$ResponseDataImplCopyWithImpl<_$ResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ResponseData implements ResponseData {
  const factory _ResponseData(
      {final String status,
      final String request_id,
      final Parameters? parameters,
      final Data? data}) = _$ResponseDataImpl;

  factory _ResponseData.fromJson(Map<String, dynamic> json) =
      _$ResponseDataImpl.fromJson;

  @override
  String get status;
  @override
  String get request_id;
  @override
  Parameters? get parameters;
  @override
  Data? get data;

  /// Create a copy of ResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDataImplCopyWith<_$ResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parameters _$ParametersFromJson(Map<String, dynamic> json) {
  return _Parameters.fromJson(json);
}

/// @nodoc
mixin _$Parameters {
  String get seller_id => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get sort_by => throw _privateConstructorUsedError;

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
  $Res call({String seller_id, String country, int page, String sort_by});
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
    Object? seller_id = null,
    Object? country = null,
    Object? page = null,
    Object? sort_by = null,
  }) {
    return _then(_value.copyWith(
      seller_id: null == seller_id
          ? _value.seller_id
          : seller_id // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      sort_by: null == sort_by
          ? _value.sort_by
          : sort_by // ignore: cast_nullable_to_non_nullable
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
  $Res call({String seller_id, String country, int page, String sort_by});
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
    Object? seller_id = null,
    Object? country = null,
    Object? page = null,
    Object? sort_by = null,
  }) {
    return _then(_$ParametersImpl(
      seller_id: null == seller_id
          ? _value.seller_id
          : seller_id // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      sort_by: null == sort_by
          ? _value.sort_by
          : sort_by // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParametersImpl implements _Parameters {
  const _$ParametersImpl(
      {this.seller_id = '',
      this.country = '',
      this.page = 0,
      this.sort_by = ''});

  factory _$ParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParametersImplFromJson(json);

  @override
  @JsonKey()
  final String seller_id;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String sort_by;

  @override
  String toString() {
    return 'Parameters(seller_id: $seller_id, country: $country, page: $page, sort_by: $sort_by)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParametersImpl &&
            (identical(other.seller_id, seller_id) ||
                other.seller_id == seller_id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.sort_by, sort_by) || other.sort_by == sort_by));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, seller_id, country, page, sort_by);

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
      {final String seller_id,
      final String country,
      final int page,
      final String sort_by}) = _$ParametersImpl;

  factory _Parameters.fromJson(Map<String, dynamic> json) =
      _$ParametersImpl.fromJson;

  @override
  String get seller_id;
  @override
  String get country;
  @override
  int get page;
  @override
  String get sort_by;

  /// Create a copy of Parameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParametersImplCopyWith<_$ParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get seller_id => throw _privateConstructorUsedError;
  int get total_products => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  List<Product> get seller_products => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String seller_id,
      int total_products,
      String country,
      String domain,
      List<Product> seller_products,
      List<Product> products});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seller_id = null,
    Object? total_products = null,
    Object? country = null,
    Object? domain = null,
    Object? seller_products = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      seller_id: null == seller_id
          ? _value.seller_id
          : seller_id // ignore: cast_nullable_to_non_nullable
              as String,
      total_products: null == total_products
          ? _value.total_products
          : total_products // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      seller_products: null == seller_products
          ? _value.seller_products
          : seller_products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String seller_id,
      int total_products,
      String country,
      String domain,
      List<Product> seller_products,
      List<Product> products});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seller_id = null,
    Object? total_products = null,
    Object? country = null,
    Object? domain = null,
    Object? seller_products = null,
    Object? products = null,
  }) {
    return _then(_$DataImpl(
      seller_id: null == seller_id
          ? _value.seller_id
          : seller_id // ignore: cast_nullable_to_non_nullable
              as String,
      total_products: null == total_products
          ? _value.total_products
          : total_products // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      seller_products: null == seller_products
          ? _value._seller_products
          : seller_products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.seller_id = '',
      this.total_products = 0,
      this.country = '',
      this.domain = '',
      final List<Product> seller_products = const [],
      final List<Product> products = const []})
      : _seller_products = seller_products,
        _products = products;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey()
  final String seller_id;
  @override
  @JsonKey()
  final int total_products;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final String domain;
  final List<Product> _seller_products;
  @override
  @JsonKey()
  List<Product> get seller_products {
    if (_seller_products is EqualUnmodifiableListView) return _seller_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seller_products);
  }

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'Data(seller_id: $seller_id, total_products: $total_products, country: $country, domain: $domain, seller_products: $seller_products, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.seller_id, seller_id) ||
                other.seller_id == seller_id) &&
            (identical(other.total_products, total_products) ||
                other.total_products == total_products) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            const DeepCollectionEquality()
                .equals(other._seller_products, _seller_products) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      seller_id,
      total_products,
      country,
      domain,
      const DeepCollectionEquality().hash(_seller_products),
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String seller_id,
      final int total_products,
      final String country,
      final String domain,
      final List<Product> seller_products,
      final List<Product> products}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String get seller_id;
  @override
  int get total_products;
  @override
  String get country;
  @override
  String get domain;
  @override
  List<Product> get seller_products;
  @override
  List<Product> get products;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
