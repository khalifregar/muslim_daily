import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/timing.dart';

part 'timing_dto.freezed.dart';
part 'timing_dto.g.dart';

@freezed
class TimingDto with _$TimingDto {
  const TimingDto._();

  factory TimingDto ({
    @JsonKey(name: 'Fajr') String? fajr,
    @JsonKey(name: 'Sunrise') String? sunrise,
    @JsonKey(name: 'Dhuhr') String? dhuhr,
    @JsonKey(name: 'Asr') String? asr,
    @JsonKey(name: 'Sunset') String? sunset,
    @JsonKey(name: 'Maghrib') String? maghrib,
    @JsonKey(name: 'Isha') String? isha,
    @JsonKey(name: 'Imsak') String? imsak,
    @JsonKey(name: 'Midnight') String? midnight,
    @JsonKey(name: 'Firstthird') String? firstthird,
    @JsonKey(name: 'Lastthird') String? lastthird,
  }) = _TimingDto;

  factory TimingDto.fromDomain(Timing timing) {
    return TimingDto(
      fajr: timing.fajr,
      sunrise: timing.sunrise,
      dhuhr: timing.dhuhr,
      asr: timing.asr,
      sunset: timing.sunset,
      maghrib: timing.maghrib,
      isha: timing.isha,
      imsak: timing.imsak,
      midnight: timing.midnight,
      firstthird: timing.firstthird,
      lastthird: timing.lastthird
    );
  }

  Timing toDomain() {
    return Timing (
      fajr: fajr,
      sunrise: sunrise,
      dhuhr: dhuhr,
      asr: asr,
      sunset: sunset,
      maghrib: maghrib,
      isha: isha,
      imsak: imsak,
      midnight: midnight,
      firstthird: firstthird,
      lastthird: lastthird,
    );
  }

  factory TimingDto.fromJson(Map<String, dynamic> json) =>
    _$TimingDtoFromJson(json);

static List<Timing> fromJsonList(List<dynamic> list) {
  return list
      .map((e) => TimingDto.fromJson(e as Map<String, dynamic>).toDomain())
      .toList();
}

}