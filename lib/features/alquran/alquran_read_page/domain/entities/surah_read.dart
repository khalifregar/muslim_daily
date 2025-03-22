import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/alquran/alquran_read_page/domain/entities/ayat.dart';

part 'surah_read.freezed.dart';
part 'surah_read.g.dart';

@freezed
class SurahRead with _$SurahRead {
  factory SurahRead({
    required Map<String, String> audioFull,
    required List<Ayat> ayat,
  }) = _SurahRead;

  factory SurahRead.fromJson(Map<String, dynamic> json) =>
      _$SurahReadFromJson(json);
}
