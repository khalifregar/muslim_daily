import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/alquran/al_quran_menu/domain/entities/surah.dart';

part 'surah_dto.freezed.dart';
part 'surah_dto.g.dart';

@freezed
class SurahDto with _$SurahDto {
  const SurahDto._();

  factory SurahDto({
    int? nomor,
    String? nama,
    @JsonKey(name: 'namaLatin') String? namaLatin,
    @JsonKey(name: 'jumlahAyat') int? jumlahAyat,
    @JsonKey(name: 'tempatTurun') String? tempatTurun,
    String? arti,
    String? deskripsi
  }) = _SurahDto;

  factory SurahDto.fromDomain(Surah surah) {
    return SurahDto(
    nomor: surah.nomor,
    nama: surah.nama,
    namaLatin: surah.namaLatin,
    jumlahAyat: surah.jumlahAyat,
    tempatTurun: surah.tempatTurun,
    arti: surah.arti,
    deskripsi: surah.deskripsi,
    );
  }

  Surah toDomain() {
    return Surah(
      nomor: nomor,
      nama: nama,
      namaLatin: namaLatin,
      jumlahAyat: jumlahAyat,
      tempatTurun: tempatTurun,
      arti: arti,
      deskripsi: deskripsi,
    );
  }

  factory SurahDto.fromJson(Map<String, dynamic> json) =>
  _$SurahDtoFromJson(json);

  static List<Surah> fromJsonList(List<dynamic> list) {
    return list
    .map((e) => SurahDto.fromJson(e as Map<String, dynamic>).toDomain())
    .toList();
  }
}