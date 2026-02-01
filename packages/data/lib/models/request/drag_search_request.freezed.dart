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

 List<CircleDto> get circles;
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
 List<CircleDto> circles
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
as List<CircleDto>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CircleDto> circles)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CircleDto> circles)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CircleDto> circles)?  $default,) {final _that = this;
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
  const _DragSearchRequest({required final  List<CircleDto> circles}): _circles = circles;
  factory _DragSearchRequest.fromJson(Map<String, dynamic> json) => _$DragSearchRequestFromJson(json);

 final  List<CircleDto> _circles;
@override List<CircleDto> get circles {
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
 List<CircleDto> circles
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
as List<CircleDto>,
  ));
}


}


/// @nodoc
mixin _$CircleDto {

 double get centerX; double get centerY; double get radius;
/// Create a copy of CircleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CircleDtoCopyWith<CircleDto> get copyWith => _$CircleDtoCopyWithImpl<CircleDto>(this as CircleDto, _$identity);

  /// Serializes this CircleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CircleDto&&(identical(other.centerX, centerX) || other.centerX == centerX)&&(identical(other.centerY, centerY) || other.centerY == centerY)&&(identical(other.radius, radius) || other.radius == radius));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,centerX,centerY,radius);

@override
String toString() {
  return 'CircleDto(centerX: $centerX, centerY: $centerY, radius: $radius)';
}


}

/// @nodoc
abstract mixin class $CircleDtoCopyWith<$Res>  {
  factory $CircleDtoCopyWith(CircleDto value, $Res Function(CircleDto) _then) = _$CircleDtoCopyWithImpl;
@useResult
$Res call({
 double centerX, double centerY, double radius
});




}
/// @nodoc
class _$CircleDtoCopyWithImpl<$Res>
    implements $CircleDtoCopyWith<$Res> {
  _$CircleDtoCopyWithImpl(this._self, this._then);

  final CircleDto _self;
  final $Res Function(CircleDto) _then;

/// Create a copy of CircleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? centerX = null,Object? centerY = null,Object? radius = null,}) {
  return _then(_self.copyWith(
centerX: null == centerX ? _self.centerX : centerX // ignore: cast_nullable_to_non_nullable
as double,centerY: null == centerY ? _self.centerY : centerY // ignore: cast_nullable_to_non_nullable
as double,radius: null == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CircleDto].
extension CircleDtoPatterns on CircleDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CircleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CircleDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CircleDto value)  $default,){
final _that = this;
switch (_that) {
case _CircleDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CircleDto value)?  $default,){
final _that = this;
switch (_that) {
case _CircleDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double centerX,  double centerY,  double radius)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CircleDto() when $default != null:
return $default(_that.centerX,_that.centerY,_that.radius);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double centerX,  double centerY,  double radius)  $default,) {final _that = this;
switch (_that) {
case _CircleDto():
return $default(_that.centerX,_that.centerY,_that.radius);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double centerX,  double centerY,  double radius)?  $default,) {final _that = this;
switch (_that) {
case _CircleDto() when $default != null:
return $default(_that.centerX,_that.centerY,_that.radius);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CircleDto implements CircleDto {
  const _CircleDto({required this.centerX, required this.centerY, required this.radius});
  factory _CircleDto.fromJson(Map<String, dynamic> json) => _$CircleDtoFromJson(json);

@override final  double centerX;
@override final  double centerY;
@override final  double radius;

/// Create a copy of CircleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CircleDtoCopyWith<_CircleDto> get copyWith => __$CircleDtoCopyWithImpl<_CircleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CircleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CircleDto&&(identical(other.centerX, centerX) || other.centerX == centerX)&&(identical(other.centerY, centerY) || other.centerY == centerY)&&(identical(other.radius, radius) || other.radius == radius));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,centerX,centerY,radius);

@override
String toString() {
  return 'CircleDto(centerX: $centerX, centerY: $centerY, radius: $radius)';
}


}

/// @nodoc
abstract mixin class _$CircleDtoCopyWith<$Res> implements $CircleDtoCopyWith<$Res> {
  factory _$CircleDtoCopyWith(_CircleDto value, $Res Function(_CircleDto) _then) = __$CircleDtoCopyWithImpl;
@override @useResult
$Res call({
 double centerX, double centerY, double radius
});




}
/// @nodoc
class __$CircleDtoCopyWithImpl<$Res>
    implements _$CircleDtoCopyWith<$Res> {
  __$CircleDtoCopyWithImpl(this._self, this._then);

  final _CircleDto _self;
  final $Res Function(_CircleDto) _then;

/// Create a copy of CircleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? centerX = null,Object? centerY = null,Object? radius = null,}) {
  return _then(_CircleDto(
centerX: null == centerX ? _self.centerX : centerX // ignore: cast_nullable_to_non_nullable
as double,centerY: null == centerY ? _self.centerY : centerY // ignore: cast_nullable_to_non_nullable
as double,radius: null == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
