import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/jadwal_sholat/data/models/dtos/meta_dto.dart';
import 'package:muslim_daily/features/jadwal_sholat/data/models/dtos/sholat_date_dto.dart';
import 'package:muslim_daily/features/jadwal_sholat/data/models/dtos/timing_dto.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/jadwal_sholat.dart';

part 'jadwal_sholat_dto.freezed.dart';
part 'jadwal_sholat_dto.g.dart';

@freezed
class JadwalSholatDto with _$JadwalSholatDto {
  const JadwalSholatDto._();

  const factory JadwalSholatDto({
    @JsonKey(name: 'timings') TimingDto? timing,
    @JsonKey(name: 'date') SholatDateDto? date,
    @JsonKey(name: 'meta') MetaDto? meta,
  }) = _JadwalSholatDto;

factory JadwalSholatDto.fromDomain(JadwalSholat jadwal) {
  return JadwalSholatDto(
    timing: jadwal.timing != null ? TimingDto.fromDomain(jadwal.timing!) : null,
    date: jadwal.date != null ? SholatDateDto.fromDomain(jadwal.date!) : null,
    meta: jadwal.meta != null ? MetaDto.fromDomain(jadwal.meta!) : null,
  );
}


  JadwalSholat toDomain() {
    return JadwalSholat(
      timing: timing?.toDomain(),
      date: date?.toDomain(),
      meta: meta?.toDomain(),
    );
  }

  factory JadwalSholatDto.fromJson(Map<String, dynamic> json) =>
      _$JadwalSholatDtoFromJson(json);

  static List<JadwalSholat> fromJsonList(List<dynamic> list) {
    return list
        .map((e) =>
            JadwalSholatDto.fromJson(e as Map<String, dynamic>).toDomain())
        .toList();
  }
}
