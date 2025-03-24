import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  factory Meta({
    double? latitude,
    double? longitude,
    String? timezone,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) =>
      _$MetaFromJson(json);
}
