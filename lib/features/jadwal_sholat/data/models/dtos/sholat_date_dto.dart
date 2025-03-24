import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/sholat_date.dart';

part 'sholat_date_dto.freezed.dart';
part 'sholat_date_dto.g.dart';

@freezed
class SholatDateDto with _$SholatDateDto {
  const SholatDateDto._();

  const factory SholatDateDto({
    String? readable,
    String? timestamp,
  }) = _SholatDateDto;

  factory SholatDateDto.fromDomain(SholatDate date) {
    return SholatDateDto(
      readable: date.readable,
      timestamp: date.timestamp,
    );
  }

  SholatDate toDomain() {
    return SholatDate(
      readable: readable,
      timestamp: timestamp,
    );
  }

  factory SholatDateDto.fromJson(Map<String, dynamic> json) =>
      _$SholatDateDtoFromJson(json);

  static List<SholatDate> fromJsonList(List<dynamic> list) {
    return list
        .map((e) => SholatDateDto.fromJson(e as Map<String, dynamic>).toDomain())
        .toList();
  }
}
