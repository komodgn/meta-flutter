// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonSearchRequest {

 String get dbName; String get personName;
/// Create a copy of PersonSearchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonSearchRequestCopyWith<PersonSearchRequest> get copyWith => _$PersonSearchRequestCopyWithImpl<PersonSearchRequest>(this as PersonSearchRequest, _$identity);

  /// Serializes this PersonSearchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonSearchRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&(identical(other.personName, personName) || other.personName == personName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,personName);

@override
String toString() {
  return 'PersonSearchRequest(dbName: $dbName, personName: $personName)';
}


}

/// @nodoc
abstract mixin class $PersonSearchRequestCopyWith<$Res>  {
  factory $PersonSearchRequestCopyWith(PersonSearchRequest value, $Res Function(PersonSearchRequest) _then) = _$PersonSearchRequestCopyWithImpl;
@useResult
$Res call({
 String dbName, String personName
});




}
/// @nodoc
class _$PersonSearchRequestCopyWithImpl<$Res>
    implements $PersonSearchRequestCopyWith<$Res> {
  _$PersonSearchRequestCopyWithImpl(this._self, this._then);

  final PersonSearchRequest _self;
  final $Res Function(PersonSearchRequest) _then;

/// Create a copy of PersonSearchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dbName = null,Object? personName = null,}) {
  return _then(_self.copyWith(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,personName: null == personName ? _self.personName : personName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonSearchRequest].
extension PersonSearchRequestPatterns on PersonSearchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonSearchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonSearchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonSearchRequest value)  $default,){
final _that = this;
switch (_that) {
case _PersonSearchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonSearchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PersonSearchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dbName,  String personName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonSearchRequest() when $default != null:
return $default(_that.dbName,_that.personName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dbName,  String personName)  $default,) {final _that = this;
switch (_that) {
case _PersonSearchRequest():
return $default(_that.dbName,_that.personName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dbName,  String personName)?  $default,) {final _that = this;
switch (_that) {
case _PersonSearchRequest() when $default != null:
return $default(_that.dbName,_that.personName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonSearchRequest implements PersonSearchRequest {
  const _PersonSearchRequest({required this.dbName, required this.personName});
  factory _PersonSearchRequest.fromJson(Map<String, dynamic> json) => _$PersonSearchRequestFromJson(json);

@override final  String dbName;
@override final  String personName;

/// Create a copy of PersonSearchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonSearchRequestCopyWith<_PersonSearchRequest> get copyWith => __$PersonSearchRequestCopyWithImpl<_PersonSearchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonSearchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonSearchRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&(identical(other.personName, personName) || other.personName == personName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,personName);

@override
String toString() {
  return 'PersonSearchRequest(dbName: $dbName, personName: $personName)';
}


}

/// @nodoc
abstract mixin class _$PersonSearchRequestCopyWith<$Res> implements $PersonSearchRequestCopyWith<$Res> {
  factory _$PersonSearchRequestCopyWith(_PersonSearchRequest value, $Res Function(_PersonSearchRequest) _then) = __$PersonSearchRequestCopyWithImpl;
@override @useResult
$Res call({
 String dbName, String personName
});




}
/// @nodoc
class __$PersonSearchRequestCopyWithImpl<$Res>
    implements _$PersonSearchRequestCopyWith<$Res> {
  __$PersonSearchRequestCopyWithImpl(this._self, this._then);

  final _PersonSearchRequest _self;
  final $Res Function(_PersonSearchRequest) _then;

/// Create a copy of PersonSearchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dbName = null,Object? personName = null,}) {
  return _then(_PersonSearchRequest(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,personName: null == personName ? _self.personName : personName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
