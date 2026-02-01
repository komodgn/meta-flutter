// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_image_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteImageRequest {

 String get dbName; String get deleteImage;
/// Create a copy of DeleteImageRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteImageRequestCopyWith<DeleteImageRequest> get copyWith => _$DeleteImageRequestCopyWithImpl<DeleteImageRequest>(this as DeleteImageRequest, _$identity);

  /// Serializes this DeleteImageRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteImageRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&(identical(other.deleteImage, deleteImage) || other.deleteImage == deleteImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,deleteImage);

@override
String toString() {
  return 'DeleteImageRequest(dbName: $dbName, deleteImage: $deleteImage)';
}


}

/// @nodoc
abstract mixin class $DeleteImageRequestCopyWith<$Res>  {
  factory $DeleteImageRequestCopyWith(DeleteImageRequest value, $Res Function(DeleteImageRequest) _then) = _$DeleteImageRequestCopyWithImpl;
@useResult
$Res call({
 String dbName, String deleteImage
});




}
/// @nodoc
class _$DeleteImageRequestCopyWithImpl<$Res>
    implements $DeleteImageRequestCopyWith<$Res> {
  _$DeleteImageRequestCopyWithImpl(this._self, this._then);

  final DeleteImageRequest _self;
  final $Res Function(DeleteImageRequest) _then;

/// Create a copy of DeleteImageRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dbName = null,Object? deleteImage = null,}) {
  return _then(_self.copyWith(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,deleteImage: null == deleteImage ? _self.deleteImage : deleteImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteImageRequest].
extension DeleteImageRequestPatterns on DeleteImageRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteImageRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteImageRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteImageRequest value)  $default,){
final _that = this;
switch (_that) {
case _DeleteImageRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteImageRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteImageRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dbName,  String deleteImage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteImageRequest() when $default != null:
return $default(_that.dbName,_that.deleteImage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dbName,  String deleteImage)  $default,) {final _that = this;
switch (_that) {
case _DeleteImageRequest():
return $default(_that.dbName,_that.deleteImage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dbName,  String deleteImage)?  $default,) {final _that = this;
switch (_that) {
case _DeleteImageRequest() when $default != null:
return $default(_that.dbName,_that.deleteImage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteImageRequest implements DeleteImageRequest {
  const _DeleteImageRequest({required this.dbName, required this.deleteImage});
  factory _DeleteImageRequest.fromJson(Map<String, dynamic> json) => _$DeleteImageRequestFromJson(json);

@override final  String dbName;
@override final  String deleteImage;

/// Create a copy of DeleteImageRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteImageRequestCopyWith<_DeleteImageRequest> get copyWith => __$DeleteImageRequestCopyWithImpl<_DeleteImageRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteImageRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteImageRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&(identical(other.deleteImage, deleteImage) || other.deleteImage == deleteImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,deleteImage);

@override
String toString() {
  return 'DeleteImageRequest(dbName: $dbName, deleteImage: $deleteImage)';
}


}

/// @nodoc
abstract mixin class _$DeleteImageRequestCopyWith<$Res> implements $DeleteImageRequestCopyWith<$Res> {
  factory _$DeleteImageRequestCopyWith(_DeleteImageRequest value, $Res Function(_DeleteImageRequest) _then) = __$DeleteImageRequestCopyWithImpl;
@override @useResult
$Res call({
 String dbName, String deleteImage
});




}
/// @nodoc
class __$DeleteImageRequestCopyWithImpl<$Res>
    implements _$DeleteImageRequestCopyWith<$Res> {
  __$DeleteImageRequestCopyWithImpl(this._self, this._then);

  final _DeleteImageRequest _self;
  final $Res Function(_DeleteImageRequest) _then;

/// Create a copy of DeleteImageRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dbName = null,Object? deleteImage = null,}) {
  return _then(_DeleteImageRequest(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,deleteImage: null == deleteImage ? _self.deleteImage : deleteImage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
