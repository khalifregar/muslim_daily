// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_read_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahReadDtoImpl _$$SurahReadDtoImplFromJson(Map<String, dynamic> json) =>
    _$SurahReadDtoImpl(
      audioFull: Map<String, String>.from(json['audioFull'] as Map),
      ayat: (json['ayat'] as List<dynamic>)
          .map((e) => AyatDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahReadDtoImplToJson(_$SurahReadDtoImpl instance) =>
    <String, dynamic>{
      'audioFull': instance.audioFull,
      'ayat': instance.ayat,
    };
