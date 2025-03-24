// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sholat_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SholatDate _$SholatDateFromJson(Map<String, dynamic> json) {
  return _SholatDate.fromJson(json);
}

/// @nodoc
mixin _$SholatDate {
  String? get readable => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this SholatDate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SholatDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SholatDateCopyWith<SholatDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SholatDateCopyWith<$Res> {
  factory $SholatDateCopyWith(
          SholatDate value, $Res Function(SholatDate) then) =
      _$SholatDateCopyWithImpl<$Res, SholatDate>;
  @useResult
  $Res call({String? readable, String? timestamp});
}

/// @nodoc
class _$SholatDateCopyWithImpl<$Res, $Val extends SholatDate>
    implements $SholatDateCopyWith<$Res> {
  _$SholatDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SholatDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      readable: freezed == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SholatDateImplCopyWith<$Res>
    implements $SholatDateCopyWith<$Res> {
  factory _$$SholatDateImplCopyWith(
          _$SholatDateImpl value, $Res Function(_$SholatDateImpl) then) =
      __$$SholatDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? readable, String? timestamp});
}

/// @nodoc
class __$$SholatDateImplCopyWithImpl<$Res>
    extends _$SholatDateCopyWithImpl<$Res, _$SholatDateImpl>
    implements _$$SholatDateImplCopyWith<$Res> {
  __$$SholatDateImplCopyWithImpl(
      _$SholatDateImpl _value, $Res Function(_$SholatDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SholatDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$SholatDateImpl(
      readable: freezed == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SholatDateImpl implements _SholatDate {
  _$SholatDateImpl({this.readable, this.timestamp});

  factory _$SholatDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SholatDateImplFromJson(json);

  @override
  final String? readable;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'SholatDate(readable: $readable, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SholatDateImpl &&
            (identical(other.readable, readable) ||
                other.readable == readable) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, readable, timestamp);

  /// Create a copy of SholatDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SholatDateImplCopyWith<_$SholatDateImpl> get copyWith =>
      __$$SholatDateImplCopyWithImpl<_$SholatDateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SholatDateImplToJson(
      this,
    );
  }
}

abstract class _SholatDate implements SholatDate {
  factory _SholatDate({final String? readable, final String? timestamp}) =
      _$SholatDateImpl;

  factory _SholatDate.fromJson(Map<String, dynamic> json) =
      _$SholatDateImpl.fromJson;

  @override
  String? get readable;
  @override
  String? get timestamp;

  /// Create a copy of SholatDate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SholatDateImplCopyWith<_$SholatDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
