// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GalleryImage {

 String get id; String get name; AssetEntity? get entity;
/// Create a copy of GalleryImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GalleryImageCopyWith<GalleryImage> get copyWith => _$GalleryImageCopyWithImpl<GalleryImage>(this as GalleryImage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryImage&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,entity);

@override
String toString() {
  return 'GalleryImage(id: $id, name: $name, entity: $entity)';
}


}

/// @nodoc
abstract mixin class $GalleryImageCopyWith<$Res>  {
  factory $GalleryImageCopyWith(GalleryImage value, $Res Function(GalleryImage) _then) = _$GalleryImageCopyWithImpl;
@useResult
$Res call({
 String id, String name, AssetEntity? entity
});




}
/// @nodoc
class _$GalleryImageCopyWithImpl<$Res>
    implements $GalleryImageCopyWith<$Res> {
  _$GalleryImageCopyWithImpl(this._self, this._then);

  final GalleryImage _self;
  final $Res Function(GalleryImage) _then;

/// Create a copy of GalleryImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? entity = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as AssetEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [GalleryImage].
extension GalleryImagePatterns on GalleryImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GalleryImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GalleryImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GalleryImage value)  $default,){
final _that = this;
switch (_that) {
case _GalleryImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GalleryImage value)?  $default,){
final _that = this;
switch (_that) {
case _GalleryImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  AssetEntity? entity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GalleryImage() when $default != null:
return $default(_that.id,_that.name,_that.entity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  AssetEntity? entity)  $default,) {final _that = this;
switch (_that) {
case _GalleryImage():
return $default(_that.id,_that.name,_that.entity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  AssetEntity? entity)?  $default,) {final _that = this;
switch (_that) {
case _GalleryImage() when $default != null:
return $default(_that.id,_that.name,_that.entity);case _:
  return null;

}
}

}

/// @nodoc


class _GalleryImage implements GalleryImage {
  const _GalleryImage({required this.id, required this.name, this.entity});
  

@override final  String id;
@override final  String name;
@override final  AssetEntity? entity;

/// Create a copy of GalleryImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GalleryImageCopyWith<_GalleryImage> get copyWith => __$GalleryImageCopyWithImpl<_GalleryImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GalleryImage&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.entity, entity) || other.entity == entity));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,entity);

@override
String toString() {
  return 'GalleryImage(id: $id, name: $name, entity: $entity)';
}


}

/// @nodoc
abstract mixin class _$GalleryImageCopyWith<$Res> implements $GalleryImageCopyWith<$Res> {
  factory _$GalleryImageCopyWith(_GalleryImage value, $Res Function(_GalleryImage) _then) = __$GalleryImageCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, AssetEntity? entity
});




}
/// @nodoc
class __$GalleryImageCopyWithImpl<$Res>
    implements _$GalleryImageCopyWith<$Res> {
  __$GalleryImageCopyWithImpl(this._self, this._then);

  final _GalleryImage _self;
  final $Res Function(_GalleryImage) _then;

/// Create a copy of GalleryImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? entity = freezed,}) {
  return _then(_GalleryImage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as AssetEntity?,
  ));
}


}

// dart format on
