import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_request.freezed.dart';
part 'surah_request.g.dart';

@freezed
class SurahRequest with _$SurahRequest {
  factory SurahRequest({
    int? nomor,
    String? nama,
    @JsonKey(name: 'namaLatin') String? namaLatin,
    @JsonKey(name: 'jumlahAyat') int? jumlahAyat,
    @JsonKey(name: 'tempatTurun') String? tempatTurun,
    String? arti,
    String? deskripsi,
  }) = _SurahRequest;

  factory SurahRequest.fromJson(Map<String, dynamic> json) =>
  _$SurahRequestFromJson(json);
}