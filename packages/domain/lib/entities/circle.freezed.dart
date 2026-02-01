// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Circle {

 double get centerX; double get centerY; double get radius;
/// Create a copy of Circle
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CircleCopyWith<Circle> get copyWith => _$CircleCopyWithImpl<Circle>(this as Circle, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Circle&&(identical(other.centerX, centerX) || other.centerX == centerX)&&(identical(other.centerY, centerY) || other.centerY == centerY)&&(identical(other.radius, radius) || other.radius == radius));
}


@override
int get hashCode => Object.hash(runtimeType,centerX,centerY,radius);

@override
String toString() {
  return 'Circle(centerX: $centerX, centerY: $centerY, radius: $radius)';
}


}

/// @nodoc
abstract mixin class $CircleCopyWith<$Res>  {
  factory $CircleCopyWith(Circle value, $Res Function(Circle) _then) = _$CircleCopyWithImpl;
@useResult
$Res call({
 double centerX, double centerY, double radius
});




}
/// @nodoc
class _$CircleCopyWithImpl<$Res>
    implements $CircleCopyWith<$Res> {
  _$CircleCopyWithImpl(this._self, this._then);

  final Circle _self;
  final $Res Function(Circle) _then;

/// Create a copy of Circle
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


/// Adds pattern-matching-related methods to [Circle].
extension CirclePatterns on Circle {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Circle value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Circle() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Circle value)  $default,){
final _that = this;
switch (_that) {
case _Circle():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Circle value)?  $default,){
final _that = this;
switch (_that) {
case _Circle() when $default != null:
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
case _Circle() when $default != null:
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
case _Circle():
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
case _Circle() when $default != null:
return $default(_that.centerX,_that.centerY,_that.radius);case _:
  return null;

}
}

}

/// @nodoc


class _Circle implements Circle {
  const _Circle({required this.centerX, required this.centerY, required this.radius});
  

@override final  double centerX;
@override final  double centerY;
@override final  double radius;

/// Create a copy of Circle
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CircleCopyWith<_Circle> get copyWith => __$CircleCopyWithImpl<_Circle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Circle&&(identical(other.centerX, centerX) || other.centerX == centerX)&&(identical(other.centerY, centerY) || other.centerY == centerY)&&(identical(other.radius, radius) || other.radius == radius));
}


@override
int get hashCode => Object.hash(runtimeType,centerX,centerY,radius);

@override
String toString() {
  return 'Circle(centerX: $centerX, centerY: $centerY, radius: $radius)';
}


}

/// @nodoc
abstract mixin class _$CircleCopyWith<$Res> implements $CircleCopyWith<$Res> {
  factory _$CircleCopyWith(_Circle value, $Res Function(_Circle) _then) = __$CircleCopyWithImpl;
@override @useResult
$Res call({
 double centerX, double centerY, double radius
});




}
/// @nodoc
class __$CircleCopyWithImpl<$Res>
    implements _$CircleCopyWith<$Res> {
  __$CircleCopyWithImpl(this._self, this._then);

  final _Circle _self;
  final $Res Function(_Circle) _then;

/// Create a copy of Circle
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? centerX = null,Object? centerY = null,Object? radius = null,}) {
  return _then(_Circle(
centerX: null == centerX ? _self.centerX : centerX // ignore: cast_nullable_to_non_nullable
as double,centerY: null == centerY ? _self.centerY : centerY // ignore: cast_nullable_to_non_nullable
as double,radius: null == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
