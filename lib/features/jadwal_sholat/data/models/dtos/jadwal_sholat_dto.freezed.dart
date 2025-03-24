// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jadwal_sholat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JadwalSholatDto _$JadwalSholatDtoFromJson(Map<String, dynamic> json) {
  return _JadwalSholatDto.fromJson(json);
}

/// @nodoc
mixin _$JadwalSholatDto {
  @JsonKey(name: 'timings')
  TimingDto? get timing => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  SholatDateDto? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  MetaDto? get meta => throw _privateConstructorUsedError;

  /// Serializes this JadwalSholatDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JadwalSholatDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JadwalSholatDtoCopyWith<JadwalSholatDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JadwalSholatDtoCopyWith<$Res> {
  factory $JadwalSholatDtoCopyWith(
          JadwalSholatDto value, $Res Function(JadwalSholatDto) then) =
      _$JadwalSholatDtoCopyWithImpl<$Res, JadwalSholatDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'timings') TimingDto? timing,
      @JsonKey(name: 'date') SholatDateDto? date,
      @JsonKey(name: 'meta') MetaDto? meta});

  $TimingDtoCopyWith<$Res>? get timing;
  $SholatDateDtoCopyWith<$Res>? get date;
  $MetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class _$JadwalSholatDtoCopyWithImpl<$Res, $Val extends JadwalSholatDto>
    implements $JadwalSholatDtoCopyWith<$Res> {
  _$JadwalSholatDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JadwalSholatDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timing = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      timing: freezed == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as TimingDto?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as SholatDateDto?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto?,
    ) as $Val);
  }

  /// Create a copy of JadwalSholatDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimingDtoCopyWith<$Res>? get timing {
    if (_value.timing == null) {
      return null;
    }

    return $TimingDtoCopyWith<$Res>(_value.timing!, (value) {
      return _then(_value.copyWith(timing: value) as $Val);
    });
  }

  /// Create a copy of JadwalSholatDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SholatDateDtoCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $SholatDateDtoCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  /// Create a copy of JadwalSholatDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDtoCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDtoCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JadwalSholatDtoImplCopyWith<$Res>
    implements $JadwalSholatDtoCopyWith<$Res> {
  factory _$$JadwalSholatDtoImplCopyWith(_$JadwalSholatDtoImpl value,
          $Res Function(_$JadwalSholatDtoImpl) then) =
      __$$JadwalSholatDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'timings') TimingDto? timing,
      @JsonKey(name: 'date') SholatDateDto? date,
      @JsonKey(name: 'meta') MetaDto? meta});

  @override
  $TimingDtoCopyWith<$Res>? get timing;
  @override
  $SholatDateDtoCopyWith<$Res>? get date;
  @override
  $MetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$JadwalSholatDtoImplCopyWithImpl<$Res>
    extends _$JadwalSholatDtoCopyWithImpl<$Res, _$JadwalSholatDtoImpl>
    implements _$$JadwalSholatDtoImplCopyWith<$Res> {
  __$$JadwalSholatDtoImplCopyWithImpl(
      _$JadwalSholatDtoImpl _value, $Res Function(_$JadwalSholatDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of JadwalSholatDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timing = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$JadwalSholatDtoImpl(
      timing: freezed == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as TimingDto?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as SholatDateDto?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JadwalSholatDtoImpl extends _JadwalSholatDto {
  const _$JadwalSholatDtoImpl(
      {@JsonKey(name: 'timings') this.timing,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'meta') this.meta})
      : super._();

  factory _$JadwalSholatDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JadwalSholatDtoImplFromJson(json);

  @override
  @JsonKey(name: 'timings')
  final TimingDto? timing;
  @override
  @JsonKey(name: 'date')
  final SholatDateDto? date;
  @override
  @JsonKey(name: 'meta')
  final MetaDto? meta;

  @override
  String toString() {
    return 'JadwalSholatDto(timing: $timing, date: $date, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JadwalSholatDtoImpl &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timing, date, meta);

  /// Create a copy of JadwalSholatDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JadwalSholatDtoImplCopyWith<_$JadwalSholatDtoImpl> get copyWith =>
      __$$JadwalSholatDtoImplCopyWithImpl<_$JadwalSholatDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JadwalSholatDtoImplToJson(
      this,
    );
  }
}

abstract class _JadwalSholatDto extends JadwalSholatDto {
  const factory _JadwalSholatDto(
      {@JsonKey(name: 'timings') final TimingDto? timing,
      @JsonKey(name: 'date') final SholatDateDto? date,
      @JsonKey(name: 'meta') final MetaDto? meta}) = _$JadwalSholatDtoImpl;
  const _JadwalSholatDto._() : super._();

  factory _JadwalSholatDto.fromJson(Map<String, dynamic> json) =
      _$JadwalSholatDtoImpl.fromJson;

  @override
  @JsonKey(name: 'timings')
  TimingDto? get timing;
  @override
  @JsonKey(name: 'date')
  SholatDateDto? get date;
  @override
  @JsonKey(name: 'meta')
  MetaDto? get meta;

  /// Create a copy of JadwalSholatDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JadwalSholatDtoImplCopyWith<_$JadwalSholatDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
