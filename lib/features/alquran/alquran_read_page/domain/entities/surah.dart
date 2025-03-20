import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class Surah with _$Surah {
  factory Surah({
    int? nomor,
    String? nama,
    @JsonKey(name: 'namaLatin') String? namaLatin,
    @JsonKey(name: 'jumlahAyat') int? jumlahAyat,
    @JsonKey(name: 'tempatTurun') String? tempatTurun,
    String? arti,
    String? deskripsi
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) =>
      _$SurahFromJson(json);
}