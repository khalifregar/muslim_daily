// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ayat _$AyatFromJson(Map<String, dynamic> json) {
  return _Ayat.fromJson(json);
}

/// @nodoc
mixin _$Ayat {
  @JsonKey(name: 'nomorAyat')
  int? get nomorAyat => throw _privateConstructorUsedError;
  @JsonKey(name: 'teksArab')
  String? get teksArab => throw _privateConstructorUsedError;
  @JsonKey(name: 'teksLatin')
  String? get teksLatin => throw _privateConstructorUsedError;
  @JsonKey(name: 'teksIndonesia')
  String? get teksIndonesia => throw _privateConstructorUsedError;
  Map<String, String> get audio => throw _privateConstructorUsedError;

  /// Serializes this Ayat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyatCopyWith<Ayat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyatCopyWith<$Res> {
  factory $AyatCopyWith(Ayat value, $Res Function(Ayat) then) =
      _$AyatCopyWithImpl<$Res, Ayat>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nomorAyat') int? nomorAyat,
      @JsonKey(name: 'teksArab') String? teksArab,
      @JsonKey(name: 'teksLatin') String? teksLatin,
      @JsonKey(name: 'teksIndonesia') String? teksIndonesia,
      Map<String, String> audio});
}

/// @nodoc
class _$AyatCopyWithImpl<$Res, $Val extends Ayat>
    implements $AyatCopyWith<$Res> {
  _$AyatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = freezed,
    Object? teksArab = freezed,
    Object? teksLatin = freezed,
    Object? teksIndonesia = freezed,
    Object? audio = null,
  }) {
    return _then(_value.copyWith(
      nomorAyat: freezed == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int?,
      teksArab: freezed == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String?,
      teksLatin: freezed == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String?,
      teksIndonesia: freezed == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyatImplCopyWith<$Res> implements $AyatCopyWith<$Res> {
  factory _$$AyatImplCopyWith(
          _$AyatImpl value, $Res Function(_$AyatImpl) then) =
      __$$AyatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nomorAyat') int? nomorAyat,
      @JsonKey(name: 'teksArab') String? teksArab,
      @JsonKey(name: 'teksLatin') String? teksLatin,
      @JsonKey(name: 'teksIndonesia') String? teksIndonesia,
      Map<String, String> audio});
}

/// @nodoc
class __$$AyatImplCopyWithImpl<$Res>
    extends _$AyatCopyWithImpl<$Res, _$AyatImpl>
    implements _$$AyatImplCopyWith<$Res> {
  __$$AyatImplCopyWithImpl(_$AyatImpl _value, $Res Function(_$AyatImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = freezed,
    Object? teksArab = freezed,
    Object? teksLatin = freezed,
    Object? teksIndonesia = freezed,
    Object? audio = null,
  }) {
    return _then(_$AyatImpl(
      nomorAyat: freezed == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int?,
      teksArab: freezed == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String?,
      teksLatin: freezed == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String?,
      teksIndonesia: freezed == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: null == audio
          ? _value._audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyatImpl implements _Ayat {
  _$AyatImpl(
      {@JsonKey(name: 'nomorAyat') this.nomorAyat,
      @JsonKey(name: 'teksArab') this.teksArab,
      @JsonKey(name: 'teksLatin') this.teksLatin,
      @JsonKey(name: 'teksIndonesia') this.teksIndonesia,
      required final Map<String, String> audio})
      : _audio = audio;

  factory _$AyatImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyatImplFromJson(json);

  @override
  @JsonKey(name: 'nomorAyat')
  final int? nomorAyat;
  @override
  @JsonKey(name: 'teksArab')
  final String? teksArab;
  @override
  @JsonKey(name: 'teksLatin')
  final String? teksLatin;
  @override
  @JsonKey(name: 'teksIndonesia')
  final String? teksIndonesia;
  final Map<String, String> _audio;
  @override
  Map<String, String> get audio {
    if (_audio is EqualUnmodifiableMapView) return _audio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_audio);
  }

  @override
  String toString() {
    return 'Ayat(nomorAyat: $nomorAyat, teksArab: $teksArab, teksLatin: $teksLatin, teksIndonesia: $teksIndonesia, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyatImpl &&
            (identical(other.nomorAyat, nomorAyat) ||
                other.nomorAyat == nomorAyat) &&
            (identical(other.teksArab, teksArab) ||
                other.teksArab == teksArab) &&
            (identical(other.teksLatin, teksLatin) ||
                other.teksLatin == teksLatin) &&
            (identical(other.teksIndonesia, teksIndonesia) ||
                other.teksIndonesia == teksIndonesia) &&
            const DeepCollectionEquality().equals(other._audio, _audio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nomorAyat, teksArab, teksLatin,
      teksIndonesia, const DeepCollectionEquality().hash(_audio));

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyatImplCopyWith<_$AyatImpl> get copyWith =>
      __$$AyatImplCopyWithImpl<_$AyatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyatImplToJson(
      this,
    );
  }
}

abstract class _Ayat implements Ayat {
  factory _Ayat(
      {@JsonKey(name: 'nomorAyat') final int? nomorAyat,
      @JsonKey(name: 'teksArab') final String? teksArab,
      @JsonKey(name: 'teksLatin') final String? teksLatin,
      @JsonKey(name: 'teksIndonesia') final String? teksIndonesia,
      required final Map<String, String> audio}) = _$AyatImpl;

  factory _Ayat.fromJson(Map<String, dynamic> json) = _$AyatImpl.fromJson;

  @override
  @JsonKey(name: 'nomorAyat')
  int? get nomorAyat;
  @override
  @JsonKey(name: 'teksArab')
  String? get teksArab;
  @override
  @JsonKey(name: 'teksLatin')
  String? get teksLatin;
  @override
  @JsonKey(name: 'teksIndonesia')
  String? get teksIndonesia;
  @override
  Map<String, String> get audio;

  /// Create a copy of Ayat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyatImplCopyWith<_$AyatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
