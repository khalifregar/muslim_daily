import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/data/models/dtos/ayat_dto.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/surah_read.dart';

part 'surah_read_dto.freezed.dart';
part 'surah_read_dto.g.dart';

@freezed
class SurahReadDto with _$SurahReadDto {
  const SurahReadDto._();

  factory SurahReadDto({
    required Map<String, String> audioFull,
    required List<AyatDto> ayat,
  }) = _SurahReadDto;

  factory SurahReadDto.fromDomain(SurahRead surahRead) {
    return SurahReadDto(
      audioFull: surahRead.audioFull,
      ayat: surahRead.ayat.map((e) => AyatDto.fromDomain(e)).toList(),
    );
  }

  SurahRead toDomain() {
    return SurahRead(
      audioFull: audioFull,
      ayat: ayat.map((e) => e.toDomain()).toList(),
    );
  }

  factory SurahReadDto.fromJson(Map<String, dynamic> json) =>
      _$SurahReadDtoFromJson(json);

  static List<SurahRead> fromJsonList(List<dynamic> list) {
    return list
        .map((e) => SurahReadDto.fromJson(e as Map<String, dynamic>).toDomain())
        .toList();
  }
}
