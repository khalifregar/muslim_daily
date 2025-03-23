// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doa_harian_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoaHarianDto _$DoaHarianDtoFromJson(Map<String, dynamic> json) {
  return _DoaHarianDto.fromJson(json);
}

/// @nodoc
mixin _$DoaHarianDto {
  String? get judul => throw _privateConstructorUsedError;
  String? get arab => throw _privateConstructorUsedError;
  String? get indo => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;

  /// Serializes this DoaHarianDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoaHarianDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoaHarianDtoCopyWith<DoaHarianDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoaHarianDtoCopyWith<$Res> {
  factory $DoaHarianDtoCopyWith(
          DoaHarianDto value, $Res Function(DoaHarianDto) then) =
      _$DoaHarianDtoCopyWithImpl<$Res, DoaHarianDto>;
  @useResult
  $Res call({String? judul, String? arab, String? indo, String? source});
}

/// @nodoc
class _$DoaHarianDtoCopyWithImpl<$Res, $Val extends DoaHarianDto>
    implements $DoaHarianDtoCopyWith<$Res> {
  _$DoaHarianDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoaHarianDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = freezed,
    Object? arab = freezed,
    Object? indo = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      arab: freezed == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String?,
      indo: freezed == indo
          ? _value.indo
          : indo // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoaHarianDtoImplCopyWith<$Res>
    implements $DoaHarianDtoCopyWith<$Res> {
  factory _$$DoaHarianDtoImplCopyWith(
          _$DoaHarianDtoImpl value, $Res Function(_$DoaHarianDtoImpl) then) =
      __$$DoaHarianDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? judul, String? arab, String? indo, String? source});
}

/// @nodoc
class __$$DoaHarianDtoImplCopyWithImpl<$Res>
    extends _$DoaHarianDtoCopyWithImpl<$Res, _$DoaHarianDtoImpl>
    implements _$$DoaHarianDtoImplCopyWith<$Res> {
  __$$DoaHarianDtoImplCopyWithImpl(
      _$DoaHarianDtoImpl _value, $Res Function(_$DoaHarianDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoaHarianDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? judul = freezed,
    Object? arab = freezed,
    Object? indo = freezed,
    Object? source = freezed,
  }) {
    return _then(_$DoaHarianDtoImpl(
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      arab: freezed == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String?,
      indo: freezed == indo
          ? _value.indo
          : indo // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoaHarianDtoImpl extends _DoaHarianDto {
  _$DoaHarianDtoImpl({this.judul, this.arab, this.indo, this.source})
      : super._();

  factory _$DoaHarianDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoaHarianDtoImplFromJson(json);

  @override
  final String? judul;
  @override
  final String? arab;
  @override
  final String? indo;
  @override
  final String? source;

  @override
  String toString() {
    return 'DoaHarianDto(judul: $judul, arab: $arab, indo: $indo, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoaHarianDtoImpl &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.indo, indo) || other.indo == indo) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, judul, arab, indo, source);

  /// Create a copy of DoaHarianDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoaHarianDtoImplCopyWith<_$DoaHarianDtoImpl> get copyWith =>
      __$$DoaHarianDtoImplCopyWithImpl<_$DoaHarianDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoaHarianDtoImplToJson(
      this,
    );
  }
}

abstract class _DoaHarianDto extends DoaHarianDto {
  factory _DoaHarianDto(
      {final String? judul,
      final String? arab,
      final String? indo,
      final String? source}) = _$DoaHarianDtoImpl;
  _DoaHarianDto._() : super._();

  factory _DoaHarianDto.fromJson(Map<String, dynamic> json) =
      _$DoaHarianDtoImpl.fromJson;

  @override
  String? get judul;
  @override
  String? get arab;
  @override
  String? get indo;
  @override
  String? get source;

  /// Create a copy of DoaHarianDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoaHarianDtoImplCopyWith<_$DoaHarianDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
