// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_read_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahReadDto _$SurahReadDtoFromJson(Map<String, dynamic> json) {
  return _SurahReadDto.fromJson(json);
}

/// @nodoc
mixin _$SurahReadDto {
  Map<String, String> get audioFull => throw _privateConstructorUsedError;
  List<AyatDto> get ayat => throw _privateConstructorUsedError;

  /// Serializes this SurahReadDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahReadDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahReadDtoCopyWith<SurahReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahReadDtoCopyWith<$Res> {
  factory $SurahReadDtoCopyWith(
          SurahReadDto value, $Res Function(SurahReadDto) then) =
      _$SurahReadDtoCopyWithImpl<$Res, SurahReadDto>;
  @useResult
  $Res call({Map<String, String> audioFull, List<AyatDto> ayat});
}

/// @nodoc
class _$SurahReadDtoCopyWithImpl<$Res, $Val extends SurahReadDto>
    implements $SurahReadDtoCopyWith<$Res> {
  _$SurahReadDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahReadDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFull = null,
    Object? ayat = null,
  }) {
    return _then(_value.copyWith(
      audioFull: null == audioFull
          ? _value.audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<AyatDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahReadDtoImplCopyWith<$Res>
    implements $SurahReadDtoCopyWith<$Res> {
  factory _$$SurahReadDtoImplCopyWith(
          _$SurahReadDtoImpl value, $Res Function(_$SurahReadDtoImpl) then) =
      __$$SurahReadDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> audioFull, List<AyatDto> ayat});
}

/// @nodoc
class __$$SurahReadDtoImplCopyWithImpl<$Res>
    extends _$SurahReadDtoCopyWithImpl<$Res, _$SurahReadDtoImpl>
    implements _$$SurahReadDtoImplCopyWith<$Res> {
  __$$SurahReadDtoImplCopyWithImpl(
      _$SurahReadDtoImpl _value, $Res Function(_$SurahReadDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahReadDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFull = null,
    Object? ayat = null,
  }) {
    return _then(_$SurahReadDtoImpl(
      audioFull: null == audioFull
          ? _value._audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ayat: null == ayat
          ? _value._ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<AyatDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahReadDtoImpl extends _SurahReadDto {
  _$SurahReadDtoImpl(
      {required final Map<String, String> audioFull,
      required final List<AyatDto> ayat})
      : _audioFull = audioFull,
        _ayat = ayat,
        super._();

  factory _$SurahReadDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahReadDtoImplFromJson(json);

  final Map<String, String> _audioFull;
  @override
  Map<String, String> get audioFull {
    if (_audioFull is EqualUnmodifiableMapView) return _audioFull;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_audioFull);
  }

  final List<AyatDto> _ayat;
  @override
  List<AyatDto> get ayat {
    if (_ayat is EqualUnmodifiableListView) return _ayat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayat);
  }

  @override
  String toString() {
    return 'SurahReadDto(audioFull: $audioFull, ayat: $ayat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahReadDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._audioFull, _audioFull) &&
            const DeepCollectionEquality().equals(other._ayat, _ayat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audioFull),
      const DeepCollectionEquality().hash(_ayat));

  /// Create a copy of SurahReadDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahReadDtoImplCopyWith<_$SurahReadDtoImpl> get copyWith =>
      __$$SurahReadDtoImplCopyWithImpl<_$SurahReadDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahReadDtoImplToJson(
      this,
    );
  }
}

abstract class _SurahReadDto extends SurahReadDto {
  factory _SurahReadDto(
      {required final Map<String, String> audioFull,
      required final List<AyatDto> ayat}) = _$SurahReadDtoImpl;
  _SurahReadDto._() : super._();

  factory _SurahReadDto.fromJson(Map<String, dynamic> json) =
      _$SurahReadDtoImpl.fromJson;

  @override
  Map<String, String> get audioFull;
  @override
  List<AyatDto> get ayat;

  /// Create a copy of SurahReadDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahReadDtoImplCopyWith<_$SurahReadDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
