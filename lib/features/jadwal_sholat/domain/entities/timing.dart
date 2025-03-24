import 'package:freezed_annotation/freezed_annotation.dart';

part 'timing.freezed.dart';
part 'timing.g.dart';

@freezed
class Timing with _$Timing {
  factory Timing({
    String? fajr,
    String? sunrise,
    String? dhuhr,
    String? asr,
    String? sunset,
    String? maghrib,
    String? isha,
    String? imsak,
    String? midnight,
    String? firstthird,
    String? lastthird,
  }) = _Timing;

  factory Timing.fromJson(Map<String, dynamic> json) =>
      _$TimingFromJson(json);
}
