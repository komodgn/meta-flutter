// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_frequency_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonFrequencyResponse {

 List<Frequency> get frequencies;
/// Create a copy of PersonFrequencyResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonFrequencyResponseCopyWith<PersonFrequencyResponse> get copyWith => _$PersonFrequencyResponseCopyWithImpl<PersonFrequencyResponse>(this as PersonFrequencyResponse, _$identity);

  /// Serializes this PersonFrequencyResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonFrequencyResponse&&const DeepCollectionEquality().equals(other.frequencies, frequencies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(frequencies));

@override
String toString() {
  return 'PersonFrequencyResponse(frequencies: $frequencies)';
}


}

/// @nodoc
abstract mixin class $PersonFrequencyResponseCopyWith<$Res>  {
  factory $PersonFrequencyResponseCopyWith(PersonFrequencyResponse value, $Res Function(PersonFrequencyResponse) _then) = _$PersonFrequencyResponseCopyWithImpl;
@useResult
$Res call({
 List<Frequency> frequencies
});




}
/// @nodoc
class _$PersonFrequencyResponseCopyWithImpl<$Res>
    implements $PersonFrequencyResponseCopyWith<$Res> {
  _$PersonFrequencyResponseCopyWithImpl(this._self, this._then);

  final PersonFrequencyResponse _self;
  final $Res Function(PersonFrequencyResponse) _then;

/// Create a copy of PersonFrequencyResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frequencies = null,}) {
  return _then(_self.copyWith(
frequencies: null == frequencies ? _self.frequencies : frequencies // ignore: cast_nullable_to_non_nullable
as List<Frequency>,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonFrequencyResponse].
extension PersonFrequencyResponsePatterns on PersonFrequencyResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonFrequencyResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonFrequencyResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonFrequencyResponse value)  $default,){
final _that = this;
switch (_that) {
case _PersonFrequencyResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonFrequencyResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PersonFrequencyResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Frequency> frequencies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonFrequencyResponse() when $default != null:
return $default(_that.frequencies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Frequency> frequencies)  $default,) {final _that = this;
switch (_that) {
case _PersonFrequencyResponse():
return $default(_that.frequencies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Frequency> frequencies)?  $default,) {final _that = this;
switch (_that) {
case _PersonFrequencyResponse() when $default != null:
return $default(_that.frequencies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonFrequencyResponse implements PersonFrequencyResponse {
  const _PersonFrequencyResponse({required final  List<Frequency> frequencies}): _frequencies = frequencies;
  factory _PersonFrequencyResponse.fromJson(Map<String, dynamic> json) => _$PersonFrequencyResponseFromJson(json);

 final  List<Frequency> _frequencies;
@override List<Frequency> get frequencies {
  if (_frequencies is EqualUnmodifiableListView) return _frequencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_frequencies);
}


/// Create a copy of PersonFrequencyResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonFrequencyResponseCopyWith<_PersonFrequencyResponse> get copyWith => __$PersonFrequencyResponseCopyWithImpl<_PersonFrequencyResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonFrequencyResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonFrequencyResponse&&const DeepCollectionEquality().equals(other._frequencies, _frequencies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_frequencies));

@override
String toString() {
  return 'PersonFrequencyResponse(frequencies: $frequencies)';
}


}

/// @nodoc
abstract mixin class _$PersonFrequencyResponseCopyWith<$Res> implements $PersonFrequencyResponseCopyWith<$Res> {
  factory _$PersonFrequencyResponseCopyWith(_PersonFrequencyResponse value, $Res Function(_PersonFrequencyResponse) _then) = __$PersonFrequencyResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Frequency> frequencies
});




}
/// @nodoc
class __$PersonFrequencyResponseCopyWithImpl<$Res>
    implements _$PersonFrequencyResponseCopyWith<$Res> {
  __$PersonFrequencyResponseCopyWithImpl(this._self, this._then);

  final _PersonFrequencyResponse _self;
  final $Res Function(_PersonFrequencyResponse) _then;

/// Create a copy of PersonFrequencyResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frequencies = null,}) {
  return _then(_PersonFrequencyResponse(
frequencies: null == frequencies ? _self._frequencies : frequencies // ignore: cast_nullable_to_non_nullable
as List<Frequency>,
  ));
}


}


/// @nodoc
mixin _$Frequency {

 String get personName; int get frequency;
/// Create a copy of Frequency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FrequencyCopyWith<Frequency> get copyWith => _$FrequencyCopyWithImpl<Frequency>(this as Frequency, _$identity);

  /// Serializes this Frequency to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Frequency&&(identical(other.personName, personName) || other.personName == personName)&&(identical(other.frequency, frequency) || other.frequency == frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,personName,frequency);

@override
String toString() {
  return 'Frequency(personName: $personName, frequency: $frequency)';
}


}

/// @nodoc
abstract mixin class $FrequencyCopyWith<$Res>  {
  factory $FrequencyCopyWith(Frequency value, $Res Function(Frequency) _then) = _$FrequencyCopyWithImpl;
@useResult
$Res call({
 String personName, int frequency
});




}
/// @nodoc
class _$FrequencyCopyWithImpl<$Res>
    implements $FrequencyCopyWith<$Res> {
  _$FrequencyCopyWithImpl(this._self, this._then);

  final Frequency _self;
  final $Res Function(Frequency) _then;

/// Create a copy of Frequency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? personName = null,Object? frequency = null,}) {
  return _then(_self.copyWith(
personName: null == personName ? _self.personName : personName // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Frequency].
extension FrequencyPatterns on Frequency {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Frequency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Frequency() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Frequency value)  $default,){
final _that = this;
switch (_that) {
case _Frequency():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Frequency value)?  $default,){
final _that = this;
switch (_that) {
case _Frequency() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String personName,  int frequency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Frequency() when $default != null:
return $default(_that.personName,_that.frequency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String personName,  int frequency)  $default,) {final _that = this;
switch (_that) {
case _Frequency():
return $default(_that.personName,_that.frequency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String personName,  int frequency)?  $default,) {final _that = this;
switch (_that) {
case _Frequency() when $default != null:
return $default(_that.personName,_that.frequency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Frequency implements Frequency {
  const _Frequency({required this.personName, required this.frequency});
  factory _Frequency.fromJson(Map<String, dynamic> json) => _$FrequencyFromJson(json);

@override final  String personName;
@override final  int frequency;

/// Create a copy of Frequency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FrequencyCopyWith<_Frequency> get copyWith => __$FrequencyCopyWithImpl<_Frequency>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FrequencyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Frequency&&(identical(other.personName, personName) || other.personName == personName)&&(identical(other.frequency, frequency) || other.frequency == frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,personName,frequency);

@override
String toString() {
  return 'Frequency(personName: $personName, frequency: $frequency)';
}


}

/// @nodoc
abstract mixin class _$FrequencyCopyWith<$Res> implements $FrequencyCopyWith<$Res> {
  factory _$FrequencyCopyWith(_Frequency value, $Res Function(_Frequency) _then) = __$FrequencyCopyWithImpl;
@override @useResult
$Res call({
 String personName, int frequency
});




}
/// @nodoc
class __$FrequencyCopyWithImpl<$Res>
    implements _$FrequencyCopyWith<$Res> {
  __$FrequencyCopyWithImpl(this._self, this._then);

  final _Frequency _self;
  final $Res Function(_Frequency) _then;

/// Create a copy of Frequency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? personName = null,Object? frequency = null,}) {
  return _then(_Frequency(
personName: null == personName ? _self.personName : personName // ignore: cast_nullable_to_non_nullable
as String,frequency: null == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
