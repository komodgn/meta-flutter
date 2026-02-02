// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triple_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TripleResponse {

 String get triple;
/// Create a copy of TripleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripleResponseCopyWith<TripleResponse> get copyWith => _$TripleResponseCopyWithImpl<TripleResponse>(this as TripleResponse, _$identity);

  /// Serializes this TripleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripleResponse&&(identical(other.triple, triple) || other.triple == triple));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,triple);

@override
String toString() {
  return 'TripleResponse(triple: $triple)';
}


}

/// @nodoc
abstract mixin class $TripleResponseCopyWith<$Res>  {
  factory $TripleResponseCopyWith(TripleResponse value, $Res Function(TripleResponse) _then) = _$TripleResponseCopyWithImpl;
@useResult
$Res call({
 String triple
});




}
/// @nodoc
class _$TripleResponseCopyWithImpl<$Res>
    implements $TripleResponseCopyWith<$Res> {
  _$TripleResponseCopyWithImpl(this._self, this._then);

  final TripleResponse _self;
  final $Res Function(TripleResponse) _then;

/// Create a copy of TripleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? triple = null,}) {
  return _then(_self.copyWith(
triple: null == triple ? _self.triple : triple // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TripleResponse].
extension TripleResponsePatterns on TripleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripleResponse value)  $default,){
final _that = this;
switch (_that) {
case _TripleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TripleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String triple)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripleResponse() when $default != null:
return $default(_that.triple);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String triple)  $default,) {final _that = this;
switch (_that) {
case _TripleResponse():
return $default(_that.triple);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String triple)?  $default,) {final _that = this;
switch (_that) {
case _TripleResponse() when $default != null:
return $default(_that.triple);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TripleResponse implements TripleResponse {
  const _TripleResponse({required this.triple});
  factory _TripleResponse.fromJson(Map<String, dynamic> json) => _$TripleResponseFromJson(json);

@override final  String triple;

/// Create a copy of TripleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripleResponseCopyWith<_TripleResponse> get copyWith => __$TripleResponseCopyWithImpl<_TripleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TripleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripleResponse&&(identical(other.triple, triple) || other.triple == triple));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,triple);

@override
String toString() {
  return 'TripleResponse(triple: $triple)';
}


}

/// @nodoc
abstract mixin class _$TripleResponseCopyWith<$Res> implements $TripleResponseCopyWith<$Res> {
  factory _$TripleResponseCopyWith(_TripleResponse value, $Res Function(_TripleResponse) _then) = __$TripleResponseCopyWithImpl;
@override @useResult
$Res call({
 String triple
});




}
/// @nodoc
class __$TripleResponseCopyWithImpl<$Res>
    implements _$TripleResponseCopyWith<$Res> {
  __$TripleResponseCopyWithImpl(this._self, this._then);

  final _TripleResponse _self;
  final $Res Function(_TripleResponse) _then;

/// Create a copy of TripleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? triple = null,}) {
  return _then(_TripleResponse(
triple: null == triple ? _self.triple : triple // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
