// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jadwal_sholat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JadwalSholatImpl _$$JadwalSholatImplFromJson(Map<String, dynamic> json) =>
    _$JadwalSholatImpl(
      timing: json['timing'] == null
          ? null
          : Timing.fromJson(json['timing'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : SholatDate.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JadwalSholatImplToJson(_$JadwalSholatImpl instance) =>
    <String, dynamic>{
      'timing': instance.timing,
      'date': instance.date,
      'meta': instance.meta,
    };
