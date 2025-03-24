// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sholat_date_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SholatDateDto _$SholatDateDtoFromJson(Map<String, dynamic> json) {
  return _SholatDateDto.fromJson(json);
}

/// @nodoc
mixin _$SholatDateDto {
  String? get readable => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;

  /// Serializes this SholatDateDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SholatDateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SholatDateDtoCopyWith<SholatDateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SholatDateDtoCopyWith<$Res> {
  factory $SholatDateDtoCopyWith(
          SholatDateDto value, $Res Function(SholatDateDto) then) =
      _$SholatDateDtoCopyWithImpl<$Res, SholatDateDto>;
  @useResult
  $Res call({String? readable, String? timestamp});
}

/// @nodoc
class _$SholatDateDtoCopyWithImpl<$Res, $Val extends SholatDateDto>
    implements $SholatDateDtoCopyWith<$Res> {
  _$SholatDateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SholatDateDto
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
abstract class _$$SholatDateDtoImplCopyWith<$Res>
    implements $SholatDateDtoCopyWith<$Res> {
  factory _$$SholatDateDtoImplCopyWith(
          _$SholatDateDtoImpl value, $Res Function(_$SholatDateDtoImpl) then) =
      __$$SholatDateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? readable, String? timestamp});
}

/// @nodoc
class __$$SholatDateDtoImplCopyWithImpl<$Res>
    extends _$SholatDateDtoCopyWithImpl<$Res, _$SholatDateDtoImpl>
    implements _$$SholatDateDtoImplCopyWith<$Res> {
  __$$SholatDateDtoImplCopyWithImpl(
      _$SholatDateDtoImpl _value, $Res Function(_$SholatDateDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SholatDateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_$SholatDateDtoImpl(
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
class _$SholatDateDtoImpl extends _SholatDateDto {
  const _$SholatDateDtoImpl({this.readable, this.timestamp}) : super._();

  factory _$SholatDateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SholatDateDtoImplFromJson(json);

  @override
  final String? readable;
  @override
  final String? timestamp;

  @override
  String toString() {
    return 'SholatDateDto(readable: $readable, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SholatDateDtoImpl &&
            (identical(other.readable, readable) ||
                other.readable == readable) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, readable, timestamp);

  /// Create a copy of SholatDateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SholatDateDtoImplCopyWith<_$SholatDateDtoImpl> get copyWith =>
      __$$SholatDateDtoImplCopyWithImpl<_$SholatDateDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SholatDateDtoImplToJson(
      this,
    );
  }
}

abstract class _SholatDateDto extends SholatDateDto {
  const factory _SholatDateDto(
      {final String? readable, final String? timestamp}) = _$SholatDateDtoImpl;
  const _SholatDateDto._() : super._();

  factory _SholatDateDto.fromJson(Map<String, dynamic> json) =
      _$SholatDateDtoImpl.fromJson;

  @override
  String? get readable;
  @override
  String? get timestamp;

  /// Create a copy of SholatDateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SholatDateDtoImplCopyWith<_$SholatDateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
