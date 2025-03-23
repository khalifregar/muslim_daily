import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/doa_harian/domain/entities/doa_harian.dart';

part 'doa_harian_dto.freezed.dart';
part 'doa_harian_dto.g.dart';

@freezed
class DoaHarianDto with _$DoaHarianDto {
  const DoaHarianDto._();

  factory DoaHarianDto({ 
    String? judul,
    String? arab,
    String? indo,
    String? source,
  }) = _DoaHarianDto;

  factory DoaHarianDto.fromDomain(DoaHarian doaHarian) {
    return DoaHarianDto (
      judul: doaHarian.judul,
      arab: doaHarian.arab,
      indo: doaHarian.indo,
      source: doaHarian.source,
    );
  }

  DoaHarian toDomain() {
    return DoaHarian (
      judul: judul,
      arab: arab,
      indo: indo,
      source: source,
    );
  }

  factory DoaHarianDto.fromJson(Map<String, dynamic> json) =>
  _$DoaHarianDtoFromJson(json);

  static List<DoaHarian> fromJsonList(List<dynamic> list) {
  return list 
  .map((e) => DoaHarianDto.fromJson(e as Map<String, dynamic>).toDomain())
  .toList();
  }
}