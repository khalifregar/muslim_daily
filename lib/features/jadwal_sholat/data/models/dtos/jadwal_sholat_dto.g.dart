// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jadwal_sholat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JadwalSholatDtoImpl _$$JadwalSholatDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$JadwalSholatDtoImpl(
      timing: json['timings'] == null
          ? null
          : TimingDto.fromJson(json['timings'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : SholatDateDto.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaDto.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JadwalSholatDtoImplToJson(
        _$JadwalSholatDtoImpl instance) =>
    <String, dynamic>{
      'timings': instance.timing,
      'date': instance.date,
      'meta': instance.meta,
    };
