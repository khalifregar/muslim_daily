// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaDto _$MetaDtoFromJson(Map<String, dynamic> json) {
  return _MetaDto.fromJson(json);
}

/// @nodoc
mixin _$MetaDto {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;

  /// Serializes this MetaDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaDtoCopyWith<MetaDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDtoCopyWith<$Res> {
  factory $MetaDtoCopyWith(MetaDto value, $Res Function(MetaDto) then) =
      _$MetaDtoCopyWithImpl<$Res, MetaDto>;
  @useResult
  $Res call({double? latitude, double? longitude, String? timezone});
}

/// @nodoc
class _$MetaDtoCopyWithImpl<$Res, $Val extends MetaDto>
    implements $MetaDtoCopyWith<$Res> {
  _$MetaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaDtoImplCopyWith<$Res> implements $MetaDtoCopyWith<$Res> {
  factory _$$MetaDtoImplCopyWith(
          _$MetaDtoImpl value, $Res Function(_$MetaDtoImpl) then) =
      __$$MetaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude, String? timezone});
}

/// @nodoc
class __$$MetaDtoImplCopyWithImpl<$Res>
    extends _$MetaDtoCopyWithImpl<$Res, _$MetaDtoImpl>
    implements _$$MetaDtoImplCopyWith<$Res> {
  __$$MetaDtoImplCopyWithImpl(
      _$MetaDtoImpl _value, $Res Function(_$MetaDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_$MetaDtoImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDtoImpl extends _MetaDto {
  const _$MetaDtoImpl({this.latitude, this.longitude, this.timezone})
      : super._();

  factory _$MetaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDtoImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? timezone;

  @override
  String toString() {
    return 'MetaDto(latitude: $latitude, longitude: $longitude, timezone: $timezone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDtoImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, timezone);

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDtoImplCopyWith<_$MetaDtoImpl> get copyWith =>
      __$$MetaDtoImplCopyWithImpl<_$MetaDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDtoImplToJson(
      this,
    );
  }
}

abstract class _MetaDto extends MetaDto {
  const factory _MetaDto(
      {final double? latitude,
      final double? longitude,
      final String? timezone}) = _$MetaDtoImpl;
  const _MetaDto._() : super._();

  factory _MetaDto.fromJson(Map<String, dynamic> json) = _$MetaDtoImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get timezone;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaDtoImplCopyWith<_$MetaDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
