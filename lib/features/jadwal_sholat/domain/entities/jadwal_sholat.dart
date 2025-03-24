import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/meta.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/sholat_date.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/timing.dart';

part 'jadwal_sholat.freezed.dart';
part 'jadwal_sholat.g.dart';

@freezed
class JadwalSholat with _$JadwalSholat {
  factory JadwalSholat({
    Timing? timing,
    SholatDate? date,
    Meta? meta,
  }) = _JadwalSholat;

  factory JadwalSholat.fromJson(Map<String, dynamic> json) =>
      _$JadwalSholatFromJson(json);
}
