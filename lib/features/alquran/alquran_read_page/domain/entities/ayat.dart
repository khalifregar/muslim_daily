import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayat.freezed.dart';
part 'ayat.g.dart';

@freezed
class Ayat with _$Ayat {
  factory Ayat({
    @JsonKey(name: 'nomorAyat') int? nomorAyat,
    @JsonKey(name: 'teksArab') String? teksArab,
    @JsonKey(name: 'teksLatin') String? teksLatin,
    @JsonKey(name: 'teksIndonesia') String? teksIndonesia,
    required Map<String, String> audio,
  }) = _Ayat;

  factory Ayat.fromJson(Map<String, dynamic> json) => _$AyatFromJson(json);
}
