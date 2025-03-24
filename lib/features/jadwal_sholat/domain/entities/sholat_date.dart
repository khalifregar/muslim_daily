import 'package:freezed_annotation/freezed_annotation.dart';

part 'sholat_date.freezed.dart';
part 'sholat_date.g.dart';

@freezed
class SholatDate with _$SholatDate {
  factory SholatDate({
    String? readable,
    String? timestamp,
  }) = _SholatDate;

  factory SholatDate.fromJson(Map<String, dynamic> json) =>
      _$SholatDateFromJson(json);
}
