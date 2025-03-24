import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/jadwal_sholat/domain/entities/meta.dart';

part 'meta_dto.freezed.dart';
part 'meta_dto.g.dart';

@freezed
class MetaDto with _$MetaDto {
  const MetaDto._();

  const factory MetaDto({
    double? latitude,
    double? longitude,
    String? timezone,
  }) = _MetaDto;

  factory MetaDto.fromDomain(Meta meta) {
    return MetaDto(
      latitude: meta.latitude,
      longitude: meta.longitude,
      timezone: meta.timezone,
    );
  }

  Meta toDomain() {
    return Meta(
      latitude: latitude,
      longitude: longitude,
      timezone: timezone,
    );
  }

  factory MetaDto.fromJson(Map<String, dynamic> json) =>
      _$MetaDtoFromJson(json);

  static List<Meta> fromJsonList(List<dynamic> list) {
    return list
        .map((e) => MetaDto.fromJson(e as Map<String, dynamic>).toDomain())
        .toList();
  }
}
