// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyatDtoImpl _$$AyatDtoImplFromJson(Map<String, dynamic> json) =>
    _$AyatDtoImpl(
      nomorAyat: (json['nomorAyat'] as num?)?.toInt(),
      teksArab: json['teksArab'] as String?,
      teksLatin: json['teksLatin'] as String?,
      teksIndonesia: json['teksIndonesia'] as String?,
      audio: Map<String, String>.from(json['audio'] as Map),
    );

Map<String, dynamic> _$$AyatDtoImplToJson(_$AyatDtoImpl instance) =>
    <String, dynamic>{
      'nomorAyat': instance.nomorAyat,
      'teksArab': instance.teksArab,
      'teksLatin': instance.teksLatin,
      'teksIndonesia': instance.teksIndonesia,
      'audio': instance.audio,
    };
