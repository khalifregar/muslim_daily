import 'package:freezed_annotation/freezed_annotation.dart';

part 'doa_harian.freezed.dart';
part 'doa_harian.g.dart';

@freezed
class DoaHarian with _$DoaHarian {
  factory DoaHarian ({
    String? judul,
    String? arab,
    String? indo,
    String? source,
  }) = _DoaHarian;

  factory DoaHarian.fromJson(Map<String, dynamic> json) =>
  _$DoaHarianFromJson(json);
}