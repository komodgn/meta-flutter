// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommonResponse {

 String? get message; String? get error;
/// Create a copy of CommonResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommonResponseCopyWith<CommonResponse> get copyWith => _$CommonResponseCopyWithImpl<CommonResponse>(this as CommonResponse, _$identity);

  /// Serializes this CommonResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommonResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,error);

@override
String toString() {
  return 'CommonResponse(message: $message, error: $error)';
}


}

/// @nodoc
abstract mixin class $CommonResponseCopyWith<$Res>  {
  factory $CommonResponseCopyWith(CommonResponse value, $Res Function(CommonResponse) _then) = _$CommonResponseCopyWithImpl;
@useResult
$Res call({
 String? message, String? error
});




}
/// @nodoc
class _$CommonResponseCopyWithImpl<$Res>
    implements $CommonResponseCopyWith<$Res> {
  _$CommonResponseCopyWithImpl(this._self, this._then);

  final CommonResponse _self;
  final $Res Function(CommonResponse) _then;

/// Create a copy of CommonResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommonResponse].
extension CommonResponsePatterns on CommonResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommonResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommonResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommonResponse value)  $default,){
final _that = this;
switch (_that) {
case _CommonResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommonResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CommonResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommonResponse() when $default != null:
return $default(_that.message,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CommonResponse():
return $default(_that.message,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CommonResponse() when $default != null:
return $default(_that.message,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommonResponse implements CommonResponse {
  const _CommonResponse({this.message = null, this.error = null});
  factory _CommonResponse.fromJson(Map<String, dynamic> json) => _$CommonResponseFromJson(json);

@override@JsonKey() final  String? message;
@override@JsonKey() final  String? error;

/// Create a copy of CommonResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommonResponseCopyWith<_CommonResponse> get copyWith => __$CommonResponseCopyWithImpl<_CommonResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommonResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommonResponse&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,error);

@override
String toString() {
  return 'CommonResponse(message: $message, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CommonResponseCopyWith<$Res> implements $CommonResponseCopyWith<$Res> {
  factory _$CommonResponseCopyWith(_CommonResponse value, $Res Function(_CommonResponse) _then) = __$CommonResponseCopyWithImpl;
@override @useResult
$Res call({
 String? message, String? error
});




}
/// @nodoc
class __$CommonResponseCopyWithImpl<$Res>
    implements _$CommonResponseCopyWith<$Res> {
  __$CommonResponseCopyWithImpl(this._self, this._then);

  final _CommonResponse _self;
  final $Res Function(_CommonResponse) _then;

/// Create a copy of CommonResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? error = freezed,}) {
  return _then(_CommonResponse(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
