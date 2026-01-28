// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drag_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DragSearchRequest {

 List<Circle> get circles;
/// Create a copy of DragSearchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DragSearchRequestCopyWith<DragSearchRequest> get copyWith => _$DragSearchRequestCopyWithImpl<DragSearchRequest>(this as DragSearchRequest, _$identity);

  /// Serializes this DragSearchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DragSearchRequest&&const DeepCollectionEquality().equals(other.circles, circles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(circles));

@override
String toString() {
  return 'DragSearchRequest(circles: $circles)';
}


}

/// @nodoc
abstract mixin class $DragSearchRequestCopyWith<$Res>  {
  factory $DragSearchRequestCopyWith(DragSearchRequest value, $Res Function(DragSearchRequest) _then) = _$DragSearchRequestCopyWithImpl;
@useResult
$Res call({
 List<Circle> circles
});




}
/// @nodoc
class _$DragSearchRequestCopyWithImpl<$Res>
    implements $DragSearchRequestCopyWith<$Res> {
  _$DragSearchRequestCopyWithImpl(this._self, this._then);

  final DragSearchRequest _self;
  final $Res Function(DragSearchRequest) _then;

/// Create a copy of DragSearchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? circles = null,}) {
  return _then(_self.copyWith(
circles: null == circles ? _self.circles : circles // ignore: cast_nullable_to_non_nullable
as List<Circle>,
  ));
}

}


/// Adds pattern-matching-related methods to [DragSearchRequest].
extension DragSearchRequestPatterns on DragSearchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DragSearchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DragSearchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DragSearchRequest value)  $default,){
final _that = this;
switch (_that) {
case _DragSearchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DragSearchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _DragSearchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Circle> circles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DragSearchRequest() when $default != null:
return $default(_that.circles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Circle> circles)  $default,) {final _that = this;
switch (_that) {
case _DragSearchRequest():
return $default(_that.circles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Circle> circles)?  $default,) {final _that = this;
switch (_that) {
case _DragSearchRequest() when $default != null:
return $default(_that.circles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DragSearchRequest implements DragSearchRequest {
  const _DragSearchRequest({required final  List<Circle> circles}): _circles = circles;
  factory _DragSearchRequest.fromJson(Map<String, dynamic> json) => _$DragSearchRequestFromJson(json);

 final  List<Circle> _circles;
@override List<Circle> get circles {
  if (_circles is EqualUnmodifiableListView) return _circles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_circles);
}


/// Create a copy of DragSearchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DragSearchRequestCopyWith<_DragSearchRequest> get copyWith => __$DragSearchRequestCopyWithImpl<_DragSearchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DragSearchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DragSearchRequest&&const DeepCollectionEquality().equals(other._circles, _circles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_circles));

@override
String toString() {
  return 'DragSearchRequest(circles: $circles)';
}


}

/// @nodoc
abstract mixin class _$DragSearchRequestCopyWith<$Res> implements $DragSearchRequestCopyWith<$Res> {
  factory _$DragSearchRequestCopyWith(_DragSearchRequest value, $Res Function(_DragSearchRequest) _then) = __$DragSearchRequestCopyWithImpl;
@override @useResult
$Res call({
 List<Circle> circles
});




}
/// @nodoc
class __$DragSearchRequestCopyWithImpl<$Res>
    implements _$DragSearchRequestCopyWith<$Res> {
  __$DragSearchRequestCopyWithImpl(this._self, this._then);

  final _DragSearchRequest _self;
  final $Res Function(_DragSearchRequest) _then;

/// Create a copy of DragSearchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? circles = null,}) {
  return _then(_DragSearchRequest(
circles: null == circles ? _self._circles : circles // ignore: cast_nullable_to_non_nullable
as List<Circle>,
  ));
}


}

// dart format on
