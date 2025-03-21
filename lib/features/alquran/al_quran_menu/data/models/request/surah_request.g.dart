// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahRequestImpl _$$SurahRequestImplFromJson(Map<String, dynamic> json) =>
    _$SurahRequestImpl(
      nomor: (json['nomor'] as num?)?.toInt(),
      nama: json['nama'] as String?,
      namaLatin: json['namaLatin'] as String?,
      jumlahAyat: (json['jumlahAyat'] as num?)?.toInt(),
      tempatTurun: json['tempatTurun'] as String?,
      arti: json['arti'] as String?,
      deskripsi: json['deskripsi'] as String?,
    );

Map<String, dynamic> _$$SurahRequestImplToJson(_$SurahRequestImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
    };
