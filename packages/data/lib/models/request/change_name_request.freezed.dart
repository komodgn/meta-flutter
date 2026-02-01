// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_name_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangeNameRequest {

 String get dbName; String get oldName; String get newName;
/// Create a copy of ChangeNameRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeNameRequestCopyWith<ChangeNameRequest> get copyWith => _$ChangeNameRequestCopyWithImpl<ChangeNameRequest>(this as ChangeNameRequest, _$identity);

  /// Serializes this ChangeNameRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeNameRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&(identical(other.oldName, oldName) || other.oldName == oldName)&&(identical(other.newName, newName) || other.newName == newName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,oldName,newName);

@override
String toString() {
  return 'ChangeNameRequest(dbName: $dbName, oldName: $oldName, newName: $newName)';
}


}

/// @nodoc
abstract mixin class $ChangeNameRequestCopyWith<$Res>  {
  factory $ChangeNameRequestCopyWith(ChangeNameRequest value, $Res Function(ChangeNameRequest) _then) = _$ChangeNameRequestCopyWithImpl;
@useResult
$Res call({
 String dbName, String oldName, String newName
});




}
/// @nodoc
class _$ChangeNameRequestCopyWithImpl<$Res>
    implements $ChangeNameRequestCopyWith<$Res> {
  _$ChangeNameRequestCopyWithImpl(this._self, this._then);

  final ChangeNameRequest _self;
  final $Res Function(ChangeNameRequest) _then;

/// Create a copy of ChangeNameRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dbName = null,Object? oldName = null,Object? newName = null,}) {
  return _then(_self.copyWith(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,oldName: null == oldName ? _self.oldName : oldName // ignore: cast_nullable_to_non_nullable
as String,newName: null == newName ? _self.newName : newName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangeNameRequest].
extension ChangeNameRequestPatterns on ChangeNameRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangeNameRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangeNameRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangeNameRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChangeNameRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangeNameRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChangeNameRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dbName,  String oldName,  String newName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangeNameRequest() when $default != null:
return $default(_that.dbName,_that.oldName,_that.newName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dbName,  String oldName,  String newName)  $default,) {final _that = this;
switch (_that) {
case _ChangeNameRequest():
return $default(_that.dbName,_that.oldName,_that.newName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dbName,  String oldName,  String newName)?  $default,) {final _that = this;
switch (_that) {
case _ChangeNameRequest() when $default != null:
return $default(_that.dbName,_that.oldName,_that.newName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangeNameRequest implements ChangeNameRequest {
  const _ChangeNameRequest({required this.dbName, required this.oldName, required this.newName});
  factory _ChangeNameRequest.fromJson(Map<String, dynamic> json) => _$ChangeNameRequestFromJson(json);

@override final  String dbName;
@override final  String oldName;
@override final  String newName;

/// Create a copy of ChangeNameRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeNameRequestCopyWith<_ChangeNameRequest> get copyWith => __$ChangeNameRequestCopyWithImpl<_ChangeNameRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeNameRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeNameRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&(identical(other.oldName, oldName) || other.oldName == oldName)&&(identical(other.newName, newName) || other.newName == newName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,oldName,newName);

@override
String toString() {
  return 'ChangeNameRequest(dbName: $dbName, oldName: $oldName, newName: $newName)';
}


}

/// @nodoc
abstract mixin class _$ChangeNameRequestCopyWith<$Res> implements $ChangeNameRequestCopyWith<$Res> {
  factory _$ChangeNameRequestCopyWith(_ChangeNameRequest value, $Res Function(_ChangeNameRequest) _then) = __$ChangeNameRequestCopyWithImpl;
@override @useResult
$Res call({
 String dbName, String oldName, String newName
});




}
/// @nodoc
class __$ChangeNameRequestCopyWithImpl<$Res>
    implements _$ChangeNameRequestCopyWith<$Res> {
  __$ChangeNameRequestCopyWithImpl(this._self, this._then);

  final _ChangeNameRequest _self;
  final $Res Function(_ChangeNameRequest) _then;

/// Create a copy of ChangeNameRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dbName = null,Object? oldName = null,Object? newName = null,}) {
  return _then(_ChangeNameRequest(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,oldName: null == oldName ? _self.oldName : oldName // ignore: cast_nullable_to_non_nullable
as String,newName: null == newName ? _self.newName : newName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
