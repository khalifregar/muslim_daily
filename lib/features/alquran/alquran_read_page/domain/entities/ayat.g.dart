// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyatImpl _$$AyatImplFromJson(Map<String, dynamic> json) => _$AyatImpl(
      nomorAyat: (json['nomorAyat'] as num?)?.toInt(),
      teksArab: json['teksArab'] as String?,
      teksLatin: json['teksLatin'] as String?,
      teksIndonesia: json['teksIndonesia'] as String?,
      audio: Map<String, String>.from(json['audio'] as Map),
    );

Map<String, dynamic> _$$AyatImplToJson(_$AyatImpl instance) =>
    <String, dynamic>{
      'nomorAyat': instance.nomorAyat,
      'teksArab': instance.teksArab,
      'teksLatin': instance.teksLatin,
      'teksIndonesia': instance.teksIndonesia,
      'audio': instance.audio,
    };
