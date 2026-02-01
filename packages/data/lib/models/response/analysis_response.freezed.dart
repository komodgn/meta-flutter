// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analysis_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalysisResponse {

 List<PersonAnalysisResult> get images;
/// Create a copy of AnalysisResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisResponseCopyWith<AnalysisResponse> get copyWith => _$AnalysisResponseCopyWithImpl<AnalysisResponse>(this as AnalysisResponse, _$identity);

  /// Serializes this AnalysisResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisResponse&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(images));

@override
String toString() {
  return 'AnalysisResponse(images: $images)';
}


}

/// @nodoc
abstract mixin class $AnalysisResponseCopyWith<$Res>  {
  factory $AnalysisResponseCopyWith(AnalysisResponse value, $Res Function(AnalysisResponse) _then) = _$AnalysisResponseCopyWithImpl;
@useResult
$Res call({
 List<PersonAnalysisResult> images
});




}
/// @nodoc
class _$AnalysisResponseCopyWithImpl<$Res>
    implements $AnalysisResponseCopyWith<$Res> {
  _$AnalysisResponseCopyWithImpl(this._self, this._then);

  final AnalysisResponse _self;
  final $Res Function(AnalysisResponse) _then;

/// Create a copy of AnalysisResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? images = null,}) {
  return _then(_self.copyWith(
images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<PersonAnalysisResult>,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalysisResponse].
extension AnalysisResponsePatterns on AnalysisResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisResponse value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PersonAnalysisResult> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisResponse() when $default != null:
return $default(_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PersonAnalysisResult> images)  $default,) {final _that = this;
switch (_that) {
case _AnalysisResponse():
return $default(_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PersonAnalysisResult> images)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisResponse() when $default != null:
return $default(_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalysisResponse implements AnalysisResponse {
  const _AnalysisResponse({required final  List<PersonAnalysisResult> images}): _images = images;
  factory _AnalysisResponse.fromJson(Map<String, dynamic> json) => _$AnalysisResponseFromJson(json);

 final  List<PersonAnalysisResult> _images;
@override List<PersonAnalysisResult> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of AnalysisResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisResponseCopyWith<_AnalysisResponse> get copyWith => __$AnalysisResponseCopyWithImpl<_AnalysisResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisResponse&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_images));

@override
String toString() {
  return 'AnalysisResponse(images: $images)';
}


}

/// @nodoc
abstract mixin class _$AnalysisResponseCopyWith<$Res> implements $AnalysisResponseCopyWith<$Res> {
  factory _$AnalysisResponseCopyWith(_AnalysisResponse value, $Res Function(_AnalysisResponse) _then) = __$AnalysisResponseCopyWithImpl;
@override @useResult
$Res call({
 List<PersonAnalysisResult> images
});




}
/// @nodoc
class __$AnalysisResponseCopyWithImpl<$Res>
    implements _$AnalysisResponseCopyWith<$Res> {
  __$AnalysisResponseCopyWithImpl(this._self, this._then);

  final _AnalysisResponse _self;
  final $Res Function(_AnalysisResponse) _then;

/// Create a copy of AnalysisResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? images = null,}) {
  return _then(_AnalysisResponse(
images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<PersonAnalysisResult>,
  ));
}


}


/// @nodoc
mixin _$PersonAnalysisResult {

 String get imageName; String get imageBytes; bool get isFaceExit;
/// Create a copy of PersonAnalysisResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonAnalysisResultCopyWith<PersonAnalysisResult> get copyWith => _$PersonAnalysisResultCopyWithImpl<PersonAnalysisResult>(this as PersonAnalysisResult, _$identity);

  /// Serializes this PersonAnalysisResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonAnalysisResult&&(identical(other.imageName, imageName) || other.imageName == imageName)&&(identical(other.imageBytes, imageBytes) || other.imageBytes == imageBytes)&&(identical(other.isFaceExit, isFaceExit) || other.isFaceExit == isFaceExit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageName,imageBytes,isFaceExit);

@override
String toString() {
  return 'PersonAnalysisResult(imageName: $imageName, imageBytes: $imageBytes, isFaceExit: $isFaceExit)';
}


}

/// @nodoc
abstract mixin class $PersonAnalysisResultCopyWith<$Res>  {
  factory $PersonAnalysisResultCopyWith(PersonAnalysisResult value, $Res Function(PersonAnalysisResult) _then) = _$PersonAnalysisResultCopyWithImpl;
@useResult
$Res call({
 String imageName, String imageBytes, bool isFaceExit
});




}
/// @nodoc
class _$PersonAnalysisResultCopyWithImpl<$Res>
    implements $PersonAnalysisResultCopyWith<$Res> {
  _$PersonAnalysisResultCopyWithImpl(this._self, this._then);

  final PersonAnalysisResult _self;
  final $Res Function(PersonAnalysisResult) _then;

/// Create a copy of PersonAnalysisResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageName = null,Object? imageBytes = null,Object? isFaceExit = null,}) {
  return _then(_self.copyWith(
imageName: null == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String,imageBytes: null == imageBytes ? _self.imageBytes : imageBytes // ignore: cast_nullable_to_non_nullable
as String,isFaceExit: null == isFaceExit ? _self.isFaceExit : isFaceExit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonAnalysisResult].
extension PersonAnalysisResultPatterns on PersonAnalysisResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonAnalysisResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonAnalysisResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonAnalysisResult value)  $default,){
final _that = this;
switch (_that) {
case _PersonAnalysisResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonAnalysisResult value)?  $default,){
final _that = this;
switch (_that) {
case _PersonAnalysisResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imageName,  String imageBytes,  bool isFaceExit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonAnalysisResult() when $default != null:
return $default(_that.imageName,_that.imageBytes,_that.isFaceExit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imageName,  String imageBytes,  bool isFaceExit)  $default,) {final _that = this;
switch (_that) {
case _PersonAnalysisResult():
return $default(_that.imageName,_that.imageBytes,_that.isFaceExit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imageName,  String imageBytes,  bool isFaceExit)?  $default,) {final _that = this;
switch (_that) {
case _PersonAnalysisResult() when $default != null:
return $default(_that.imageName,_that.imageBytes,_that.isFaceExit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonAnalysisResult implements PersonAnalysisResult {
  const _PersonAnalysisResult({required this.imageName, required this.imageBytes, required this.isFaceExit});
  factory _PersonAnalysisResult.fromJson(Map<String, dynamic> json) => _$PersonAnalysisResultFromJson(json);

@override final  String imageName;
@override final  String imageBytes;
@override final  bool isFaceExit;

/// Create a copy of PersonAnalysisResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonAnalysisResultCopyWith<_PersonAnalysisResult> get copyWith => __$PersonAnalysisResultCopyWithImpl<_PersonAnalysisResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonAnalysisResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonAnalysisResult&&(identical(other.imageName, imageName) || other.imageName == imageName)&&(identical(other.imageBytes, imageBytes) || other.imageBytes == imageBytes)&&(identical(other.isFaceExit, isFaceExit) || other.isFaceExit == isFaceExit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,imageName,imageBytes,isFaceExit);

@override
String toString() {
  return 'PersonAnalysisResult(imageName: $imageName, imageBytes: $imageBytes, isFaceExit: $isFaceExit)';
}


}

/// @nodoc
abstract mixin class _$PersonAnalysisResultCopyWith<$Res> implements $PersonAnalysisResultCopyWith<$Res> {
  factory _$PersonAnalysisResultCopyWith(_PersonAnalysisResult value, $Res Function(_PersonAnalysisResult) _then) = __$PersonAnalysisResultCopyWithImpl;
@override @useResult
$Res call({
 String imageName, String imageBytes, bool isFaceExit
});




}
/// @nodoc
class __$PersonAnalysisResultCopyWithImpl<$Res>
    implements _$PersonAnalysisResultCopyWith<$Res> {
  __$PersonAnalysisResultCopyWithImpl(this._self, this._then);

  final _PersonAnalysisResult _self;
  final $Res Function(_PersonAnalysisResult) _then;

/// Create a copy of PersonAnalysisResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageName = null,Object? imageBytes = null,Object? isFaceExit = null,}) {
  return _then(_PersonAnalysisResult(
imageName: null == imageName ? _self.imageName : imageName // ignore: cast_nullable_to_non_nullable
as String,imageBytes: null == imageBytes ? _self.imageBytes : imageBytes // ignore: cast_nullable_to_non_nullable
as String,isFaceExit: null == isFaceExit ? _self.isFaceExit : isFaceExit // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
