import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:muslim_daily/features/auth/domain/entities/user.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class AuthDto with _$AuthDto {
  const AuthDto._();

  factory AuthDto({
    String? name,
    String? email,
    String? role,
    String? token,
  }) = _AuthDto;

  factory AuthDto.fromDomain(User user) {
    return AuthDto(
      name: user.name,
      email: user.email,
      role: user.role,
      token: user.token,
    );
  }

  User toDomain() {
    return User(
      name: name ?? '',
      email: email ?? '',
      role: role ?? 'user',
      token: token ?? '',
    );
  }

  factory AuthDto.fromJson(Map<String, dynamic> json) => _$AuthDtoFromJson(json);
}
