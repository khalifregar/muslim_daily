// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimingImpl _$$TimingImplFromJson(Map<String, dynamic> json) => _$TimingImpl(
      fajr: json['fajr'] as String?,
      sunrise: json['sunrise'] as String?,
      dhuhr: json['dhuhr'] as String?,
      asr: json['asr'] as String?,
      sunset: json['sunset'] as String?,
      maghrib: json['maghrib'] as String?,
      isha: json['isha'] as String?,
      imsak: json['imsak'] as String?,
      midnight: json['midnight'] as String?,
      firstthird: json['firstthird'] as String?,
      lastthird: json['lastthird'] as String?,
    );

Map<String, dynamic> _$$TimingImplToJson(_$TimingImpl instance) =>
    <String, dynamic>{
      'fajr': instance.fajr,
      'sunrise': instance.sunrise,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'sunset': instance.sunset,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
      'imsak': instance.imsak,
      'midnight': instance.midnight,
      'firstthird': instance.firstthird,
      'lastthird': instance.lastthird,
    };
