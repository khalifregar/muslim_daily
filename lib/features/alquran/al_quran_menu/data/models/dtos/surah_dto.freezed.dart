// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahDto _$SurahDtoFromJson(Map<String, dynamic> json) {
  return _SurahDto.fromJson(json);
}

/// @nodoc
mixin _$SurahDto {
  int? get nomor => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'namaLatin')
  String? get namaLatin => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlahAyat')
  int? get jumlahAyat => throw _privateConstructorUsedError;
  @JsonKey(name: 'tempatTurun')
  String? get tempatTurun => throw _privateConstructorUsedError;
  String? get arti => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;

  /// Serializes this SurahDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahDtoCopyWith<SurahDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahDtoCopyWith<$Res> {
  factory $SurahDtoCopyWith(SurahDto value, $Res Function(SurahDto) then) =
      _$SurahDtoCopyWithImpl<$Res, SurahDto>;
  @useResult
  $Res call(
      {int? nomor,
      String? nama,
      @JsonKey(name: 'namaLatin') String? namaLatin,
      @JsonKey(name: 'jumlahAyat') int? jumlahAyat,
      @JsonKey(name: 'tempatTurun') String? tempatTurun,
      String? arti,
      String? deskripsi});
}

/// @nodoc
class _$SurahDtoCopyWithImpl<$Res, $Val extends SurahDto>
    implements $SurahDtoCopyWith<$Res> {
  _$SurahDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? nama = freezed,
    Object? namaLatin = freezed,
    Object? jumlahAyat = freezed,
    Object? tempatTurun = freezed,
    Object? arti = freezed,
    Object? deskripsi = freezed,
  }) {
    return _then(_value.copyWith(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      namaLatin: freezed == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahAyat: freezed == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int?,
      tempatTurun: freezed == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String?,
      arti: freezed == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahDtoImplCopyWith<$Res>
    implements $SurahDtoCopyWith<$Res> {
  factory _$$SurahDtoImplCopyWith(
          _$SurahDtoImpl value, $Res Function(_$SurahDtoImpl) then) =
      __$$SurahDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? nomor,
      String? nama,
      @JsonKey(name: 'namaLatin') String? namaLatin,
      @JsonKey(name: 'jumlahAyat') int? jumlahAyat,
      @JsonKey(name: 'tempatTurun') String? tempatTurun,
      String? arti,
      String? deskripsi});
}

/// @nodoc
class __$$SurahDtoImplCopyWithImpl<$Res>
    extends _$SurahDtoCopyWithImpl<$Res, _$SurahDtoImpl>
    implements _$$SurahDtoImplCopyWith<$Res> {
  __$$SurahDtoImplCopyWithImpl(
      _$SurahDtoImpl _value, $Res Function(_$SurahDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? nama = freezed,
    Object? namaLatin = freezed,
    Object? jumlahAyat = freezed,
    Object? tempatTurun = freezed,
    Object? arti = freezed,
    Object? deskripsi = freezed,
  }) {
    return _then(_$SurahDtoImpl(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      namaLatin: freezed == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahAyat: freezed == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int?,
      tempatTurun: freezed == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String?,
      arti: freezed == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahDtoImpl extends _SurahDto {
  _$SurahDtoImpl(
      {this.nomor,
      this.nama,
      @JsonKey(name: 'namaLatin') this.namaLatin,
      @JsonKey(name: 'jumlahAyat') this.jumlahAyat,
      @JsonKey(name: 'tempatTurun') this.tempatTurun,
      this.arti,
      this.deskripsi})
      : super._();

  factory _$SurahDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahDtoImplFromJson(json);

  @override
  final int? nomor;
  @override
  final String? nama;
  @override
  @JsonKey(name: 'namaLatin')
  final String? namaLatin;
  @override
  @JsonKey(name: 'jumlahAyat')
  final int? jumlahAyat;
  @override
  @JsonKey(name: 'tempatTurun')
  final String? tempatTurun;
  @override
  final String? arti;
  @override
  final String? deskripsi;

  @override
  String toString() {
    return 'SurahDto(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahDtoImpl &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.namaLatin, namaLatin) ||
                other.namaLatin == namaLatin) &&
            (identical(other.jumlahAyat, jumlahAyat) ||
                other.jumlahAyat == jumlahAyat) &&
            (identical(other.tempatTurun, tempatTurun) ||
                other.tempatTurun == tempatTurun) &&
            (identical(other.arti, arti) || other.arti == arti) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nomor, nama, namaLatin,
      jumlahAyat, tempatTurun, arti, deskripsi);

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahDtoImplCopyWith<_$SurahDtoImpl> get copyWith =>
      __$$SurahDtoImplCopyWithImpl<_$SurahDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahDtoImplToJson(
      this,
    );
  }
}

abstract class _SurahDto extends SurahDto {
  factory _SurahDto(
      {final int? nomor,
      final String? nama,
      @JsonKey(name: 'namaLatin') final String? namaLatin,
      @JsonKey(name: 'jumlahAyat') final int? jumlahAyat,
      @JsonKey(name: 'tempatTurun') final String? tempatTurun,
      final String? arti,
      final String? deskripsi}) = _$SurahDtoImpl;
  _SurahDto._() : super._();

  factory _SurahDto.fromJson(Map<String, dynamic> json) =
      _$SurahDtoImpl.fromJson;

  @override
  int? get nomor;
  @override
  String? get nama;
  @override
  @JsonKey(name: 'namaLatin')
  String? get namaLatin;
  @override
  @JsonKey(name: 'jumlahAyat')
  int? get jumlahAyat;
  @override
  @JsonKey(name: 'tempatTurun')
  String? get tempatTurun;
  @override
  String? get arti;
  @override
  String? get deskripsi;

  /// Create a copy of SurahDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahDtoImplCopyWith<_$SurahDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
