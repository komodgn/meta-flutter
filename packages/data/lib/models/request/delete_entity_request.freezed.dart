// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_entity_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteEntityRequest {

 String get dbName; String get entityName;
/// Create a copy of DeleteEntityRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteEntityRequestCopyWith<DeleteEntityRequest> get copyWith => _$DeleteEntityRequestCopyWithImpl<DeleteEntityRequest>(this as DeleteEntityRequest, _$identity);

  /// Serializes this DeleteEntityRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteEntityRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&(identical(other.entityName, entityName) || other.entityName == entityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,entityName);

@override
String toString() {
  return 'DeleteEntityRequest(dbName: $dbName, entityName: $entityName)';
}


}

/// @nodoc
abstract mixin class $DeleteEntityRequestCopyWith<$Res>  {
  factory $DeleteEntityRequestCopyWith(DeleteEntityRequest value, $Res Function(DeleteEntityRequest) _then) = _$DeleteEntityRequestCopyWithImpl;
@useResult
$Res call({
 String dbName, String entityName
});




}
/// @nodoc
class _$DeleteEntityRequestCopyWithImpl<$Res>
    implements $DeleteEntityRequestCopyWith<$Res> {
  _$DeleteEntityRequestCopyWithImpl(this._self, this._then);

  final DeleteEntityRequest _self;
  final $Res Function(DeleteEntityRequest) _then;

/// Create a copy of DeleteEntityRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dbName = null,Object? entityName = null,}) {
  return _then(_self.copyWith(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,entityName: null == entityName ? _self.entityName : entityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteEntityRequest].
extension DeleteEntityRequestPatterns on DeleteEntityRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteEntityRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteEntityRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteEntityRequest value)  $default,){
final _that = this;
switch (_that) {
case _DeleteEntityRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteEntityRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteEntityRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dbName,  String entityName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteEntityRequest() when $default != null:
return $default(_that.dbName,_that.entityName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dbName,  String entityName)  $default,) {final _that = this;
switch (_that) {
case _DeleteEntityRequest():
return $default(_that.dbName,_that.entityName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dbName,  String entityName)?  $default,) {final _that = this;
switch (_that) {
case _DeleteEntityRequest() when $default != null:
return $default(_that.dbName,_that.entityName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteEntityRequest implements DeleteEntityRequest {
  const _DeleteEntityRequest({required this.dbName, required this.entityName});
  factory _DeleteEntityRequest.fromJson(Map<String, dynamic> json) => _$DeleteEntityRequestFromJson(json);

@override final  String dbName;
@override final  String entityName;

/// Create a copy of DeleteEntityRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteEntityRequestCopyWith<_DeleteEntityRequest> get copyWith => __$DeleteEntityRequestCopyWithImpl<_DeleteEntityRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteEntityRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteEntityRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&(identical(other.entityName, entityName) || other.entityName == entityName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,entityName);

@override
String toString() {
  return 'DeleteEntityRequest(dbName: $dbName, entityName: $entityName)';
}


}

/// @nodoc
abstract mixin class _$DeleteEntityRequestCopyWith<$Res> implements $DeleteEntityRequestCopyWith<$Res> {
  factory _$DeleteEntityRequestCopyWith(_DeleteEntityRequest value, $Res Function(_DeleteEntityRequest) _then) = __$DeleteEntityRequestCopyWithImpl;
@override @useResult
$Res call({
 String dbName, String entityName
});




}
/// @nodoc
class __$DeleteEntityRequestCopyWithImpl<$Res>
    implements _$DeleteEntityRequestCopyWith<$Res> {
  __$DeleteEntityRequestCopyWithImpl(this._self, this._then);

  final _DeleteEntityRequest _self;
  final $Res Function(_DeleteEntityRequest) _then;

/// Create a copy of DeleteEntityRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dbName = null,Object? entityName = null,}) {
  return _then(_DeleteEntityRequest(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,entityName: null == entityName ? _self.entityName : entityName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
