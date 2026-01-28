// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detected_objects_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetectedObjectsRequest {

 String get dbName; List<String> get properties;
/// Create a copy of DetectedObjectsRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetectedObjectsRequestCopyWith<DetectedObjectsRequest> get copyWith => _$DetectedObjectsRequestCopyWithImpl<DetectedObjectsRequest>(this as DetectedObjectsRequest, _$identity);

  /// Serializes this DetectedObjectsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetectedObjectsRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&const DeepCollectionEquality().equals(other.properties, properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,const DeepCollectionEquality().hash(properties));

@override
String toString() {
  return 'DetectedObjectsRequest(dbName: $dbName, properties: $properties)';
}


}

/// @nodoc
abstract mixin class $DetectedObjectsRequestCopyWith<$Res>  {
  factory $DetectedObjectsRequestCopyWith(DetectedObjectsRequest value, $Res Function(DetectedObjectsRequest) _then) = _$DetectedObjectsRequestCopyWithImpl;
@useResult
$Res call({
 String dbName, List<String> properties
});




}
/// @nodoc
class _$DetectedObjectsRequestCopyWithImpl<$Res>
    implements $DetectedObjectsRequestCopyWith<$Res> {
  _$DetectedObjectsRequestCopyWithImpl(this._self, this._then);

  final DetectedObjectsRequest _self;
  final $Res Function(DetectedObjectsRequest) _then;

/// Create a copy of DetectedObjectsRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dbName = null,Object? properties = null,}) {
  return _then(_self.copyWith(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [DetectedObjectsRequest].
extension DetectedObjectsRequestPatterns on DetectedObjectsRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetectedObjectsRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetectedObjectsRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetectedObjectsRequest value)  $default,){
final _that = this;
switch (_that) {
case _DetectedObjectsRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetectedObjectsRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DetectedObjectsRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dbName,  List<String> properties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetectedObjectsRequest() when $default != null:
return $default(_that.dbName,_that.properties);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dbName,  List<String> properties)  $default,) {final _that = this;
switch (_that) {
case _DetectedObjectsRequest():
return $default(_that.dbName,_that.properties);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dbName,  List<String> properties)?  $default,) {final _that = this;
switch (_that) {
case _DetectedObjectsRequest() when $default != null:
return $default(_that.dbName,_that.properties);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetectedObjectsRequest implements DetectedObjectsRequest {
  const _DetectedObjectsRequest({required this.dbName, required final  List<String> properties}): _properties = properties;
  factory _DetectedObjectsRequest.fromJson(Map<String, dynamic> json) => _$DetectedObjectsRequestFromJson(json);

@override final  String dbName;
 final  List<String> _properties;
@override List<String> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}


/// Create a copy of DetectedObjectsRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetectedObjectsRequestCopyWith<_DetectedObjectsRequest> get copyWith => __$DetectedObjectsRequestCopyWithImpl<_DetectedObjectsRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetectedObjectsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetectedObjectsRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&const DeepCollectionEquality().equals(other._properties, _properties));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,const DeepCollectionEquality().hash(_properties));

@override
String toString() {
  return 'DetectedObjectsRequest(dbName: $dbName, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$DetectedObjectsRequestCopyWith<$Res> implements $DetectedObjectsRequestCopyWith<$Res> {
  factory _$DetectedObjectsRequestCopyWith(_DetectedObjectsRequest value, $Res Function(_DetectedObjectsRequest) _then) = __$DetectedObjectsRequestCopyWithImpl;
@override @useResult
$Res call({
 String dbName, List<String> properties
});




}
/// @nodoc
class __$DetectedObjectsRequestCopyWithImpl<$Res>
    implements _$DetectedObjectsRequestCopyWith<$Res> {
  __$DetectedObjectsRequestCopyWithImpl(this._self, this._then);

  final _DetectedObjectsRequest _self;
  final $Res Function(_DetectedObjectsRequest) _then;

/// Create a copy of DetectedObjectsRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dbName = null,Object? properties = null,}) {
  return _then(_DetectedObjectsRequest(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
