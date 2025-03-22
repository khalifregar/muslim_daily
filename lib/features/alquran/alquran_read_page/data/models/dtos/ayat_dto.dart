import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/ayat.dart';

part 'ayat_dto.freezed.dart';
part 'ayat_dto.g.dart';

@freezed
class AyatDto with _$AyatDto {
  const AyatDto._();

  factory AyatDto({
    @JsonKey(name: 'nomorAyat') int? nomorAyat,
    @JsonKey(name: 'teksArab') String? teksArab,
    @JsonKey(name: 'teksLatin') String? teksLatin,
    @JsonKey(name: 'teksIndonesia') String? teksIndonesia,
    required Map<String, String> audio,
  }) = _AyatDto;

  factory AyatDto.fromDomain(Ayat ayat) {
    return AyatDto(
      nomorAyat: ayat.nomorAyat,
      teksArab: ayat.teksArab,
      teksLatin: ayat.teksLatin,
      teksIndonesia: ayat.teksIndonesia,
      audio: ayat.audio,
    );
  }

  Ayat toDomain() {
    return Ayat(
      nomorAyat: nomorAyat,
      teksArab: teksArab,
      teksLatin: teksLatin,
      teksIndonesia: teksIndonesia,
      audio: audio,
    );
  }

  factory AyatDto.fromJson(Map<String, dynamic> json) =>
  _$AyatDtoFromJson(json);

  static List<Ayat> fromJsonList(List<dynamic> list) {
    return list
    .map((e) => AyatDto.fromJson(e as Map<String, dynamic>).toDomain())
    .toList();
  }
}