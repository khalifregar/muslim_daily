// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jadwal_sholat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JadwalSholat _$JadwalSholatFromJson(Map<String, dynamic> json) {
  return _JadwalSholat.fromJson(json);
}

/// @nodoc
mixin _$JadwalSholat {
  Timing? get timing => throw _privateConstructorUsedError;
  SholatDate? get date => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this JadwalSholat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JadwalSholat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JadwalSholatCopyWith<JadwalSholat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JadwalSholatCopyWith<$Res> {
  factory $JadwalSholatCopyWith(
          JadwalSholat value, $Res Function(JadwalSholat) then) =
      _$JadwalSholatCopyWithImpl<$Res, JadwalSholat>;
  @useResult
  $Res call({Timing? timing, SholatDate? date, Meta? meta});

  $TimingCopyWith<$Res>? get timing;
  $SholatDateCopyWith<$Res>? get date;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$JadwalSholatCopyWithImpl<$Res, $Val extends JadwalSholat>
    implements $JadwalSholatCopyWith<$Res> {
  _$JadwalSholatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JadwalSholat
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
              as Timing?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as SholatDate?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  /// Create a copy of JadwalSholat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get timing {
    if (_value.timing == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.timing!, (value) {
      return _then(_value.copyWith(timing: value) as $Val);
    });
  }

  /// Create a copy of JadwalSholat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SholatDateCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $SholatDateCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  /// Create a copy of JadwalSholat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JadwalSholatImplCopyWith<$Res>
    implements $JadwalSholatCopyWith<$Res> {
  factory _$$JadwalSholatImplCopyWith(
          _$JadwalSholatImpl value, $Res Function(_$JadwalSholatImpl) then) =
      __$$JadwalSholatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Timing? timing, SholatDate? date, Meta? meta});

  @override
  $TimingCopyWith<$Res>? get timing;
  @override
  $SholatDateCopyWith<$Res>? get date;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$JadwalSholatImplCopyWithImpl<$Res>
    extends _$JadwalSholatCopyWithImpl<$Res, _$JadwalSholatImpl>
    implements _$$JadwalSholatImplCopyWith<$Res> {
  __$$JadwalSholatImplCopyWithImpl(
      _$JadwalSholatImpl _value, $Res Function(_$JadwalSholatImpl) _then)
      : super(_value, _then);

  /// Create a copy of JadwalSholat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timing = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$JadwalSholatImpl(
      timing: freezed == timing
          ? _value.timing
          : timing // ignore: cast_nullable_to_non_nullable
              as Timing?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as SholatDate?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JadwalSholatImpl implements _JadwalSholat {
  _$JadwalSholatImpl({this.timing, this.date, this.meta});

  factory _$JadwalSholatImpl.fromJson(Map<String, dynamic> json) =>
      _$$JadwalSholatImplFromJson(json);

  @override
  final Timing? timing;
  @override
  final SholatDate? date;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'JadwalSholat(timing: $timing, date: $date, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JadwalSholatImpl &&
            (identical(other.timing, timing) || other.timing == timing) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timing, date, meta);

  /// Create a copy of JadwalSholat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JadwalSholatImplCopyWith<_$JadwalSholatImpl> get copyWith =>
      __$$JadwalSholatImplCopyWithImpl<_$JadwalSholatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JadwalSholatImplToJson(
      this,
    );
  }
}

abstract class _JadwalSholat implements JadwalSholat {
  factory _JadwalSholat(
      {final Timing? timing,
      final SholatDate? date,
      final Meta? meta}) = _$JadwalSholatImpl;

  factory _JadwalSholat.fromJson(Map<String, dynamic> json) =
      _$JadwalSholatImpl.fromJson;

  @override
  Timing? get timing;
  @override
  SholatDate? get date;
  @override
  Meta? get meta;

  /// Create a copy of JadwalSholat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JadwalSholatImplCopyWith<_$JadwalSholatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
