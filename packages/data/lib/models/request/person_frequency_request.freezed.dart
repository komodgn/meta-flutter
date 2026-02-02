// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_frequency_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonFrequencyRequest {

 String get dbName; List<String> get personNames;
/// Create a copy of PersonFrequencyRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonFrequencyRequestCopyWith<PersonFrequencyRequest> get copyWith => _$PersonFrequencyRequestCopyWithImpl<PersonFrequencyRequest>(this as PersonFrequencyRequest, _$identity);

  /// Serializes this PersonFrequencyRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonFrequencyRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&const DeepCollectionEquality().equals(other.personNames, personNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,const DeepCollectionEquality().hash(personNames));

@override
String toString() {
  return 'PersonFrequencyRequest(dbName: $dbName, personNames: $personNames)';
}


}

/// @nodoc
abstract mixin class $PersonFrequencyRequestCopyWith<$Res>  {
  factory $PersonFrequencyRequestCopyWith(PersonFrequencyRequest value, $Res Function(PersonFrequencyRequest) _then) = _$PersonFrequencyRequestCopyWithImpl;
@useResult
$Res call({
 String dbName, List<String> personNames
});




}
/// @nodoc
class _$PersonFrequencyRequestCopyWithImpl<$Res>
    implements $PersonFrequencyRequestCopyWith<$Res> {
  _$PersonFrequencyRequestCopyWithImpl(this._self, this._then);

  final PersonFrequencyRequest _self;
  final $Res Function(PersonFrequencyRequest) _then;

/// Create a copy of PersonFrequencyRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dbName = null,Object? personNames = null,}) {
  return _then(_self.copyWith(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,personNames: null == personNames ? _self.personNames : personNames // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonFrequencyRequest].
extension PersonFrequencyRequestPatterns on PersonFrequencyRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonFrequencyRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonFrequencyRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonFrequencyRequest value)  $default,){
final _that = this;
switch (_that) {
case _PersonFrequencyRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonFrequencyRequest value)?  $default,){
final _that = this;
switch (_that) {
case _PersonFrequencyRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dbName,  List<String> personNames)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonFrequencyRequest() when $default != null:
return $default(_that.dbName,_that.personNames);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dbName,  List<String> personNames)  $default,) {final _that = this;
switch (_that) {
case _PersonFrequencyRequest():
return $default(_that.dbName,_that.personNames);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dbName,  List<String> personNames)?  $default,) {final _that = this;
switch (_that) {
case _PersonFrequencyRequest() when $default != null:
return $default(_that.dbName,_that.personNames);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonFrequencyRequest implements PersonFrequencyRequest {
  const _PersonFrequencyRequest({required this.dbName, required final  List<String> personNames}): _personNames = personNames;
  factory _PersonFrequencyRequest.fromJson(Map<String, dynamic> json) => _$PersonFrequencyRequestFromJson(json);

@override final  String dbName;
 final  List<String> _personNames;
@override List<String> get personNames {
  if (_personNames is EqualUnmodifiableListView) return _personNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_personNames);
}


/// Create a copy of PersonFrequencyRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonFrequencyRequestCopyWith<_PersonFrequencyRequest> get copyWith => __$PersonFrequencyRequestCopyWithImpl<_PersonFrequencyRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonFrequencyRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonFrequencyRequest&&(identical(other.dbName, dbName) || other.dbName == dbName)&&const DeepCollectionEquality().equals(other._personNames, _personNames));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dbName,const DeepCollectionEquality().hash(_personNames));

@override
String toString() {
  return 'PersonFrequencyRequest(dbName: $dbName, personNames: $personNames)';
}


}

/// @nodoc
abstract mixin class _$PersonFrequencyRequestCopyWith<$Res> implements $PersonFrequencyRequestCopyWith<$Res> {
  factory _$PersonFrequencyRequestCopyWith(_PersonFrequencyRequest value, $Res Function(_PersonFrequencyRequest) _then) = __$PersonFrequencyRequestCopyWithImpl;
@override @useResult
$Res call({
 String dbName, List<String> personNames
});




}
/// @nodoc
class __$PersonFrequencyRequestCopyWithImpl<$Res>
    implements _$PersonFrequencyRequestCopyWith<$Res> {
  __$PersonFrequencyRequestCopyWithImpl(this._self, this._then);

  final _PersonFrequencyRequest _self;
  final $Res Function(_PersonFrequencyRequest) _then;

/// Create a copy of PersonFrequencyRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dbName = null,Object? personNames = null,}) {
  return _then(_PersonFrequencyRequest(
dbName: null == dbName ? _self.dbName : dbName // ignore: cast_nullable_to_non_nullable
as String,personNames: null == personNames ? _self._personNames : personNames // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
