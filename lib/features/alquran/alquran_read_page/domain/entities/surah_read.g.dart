// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahReadImpl _$$SurahReadImplFromJson(Map<String, dynamic> json) =>
    _$SurahReadImpl(
      audioFull: Map<String, String>.from(json['audioFull'] as Map),
      ayat: (json['ayat'] as List<dynamic>)
          .map((e) => Ayat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahReadImplToJson(_$SurahReadImpl instance) =>
    <String, dynamic>{
      'audioFull': instance.audioFull,
      'ayat': instance.ayat,
    };
