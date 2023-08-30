import 'package:epayco_flutter/domain/entities/auth_response_entity.dart';

class AuthResponse extends AuthResponseEntity {
  AuthResponse({required super.token});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      token: json['token'],
    );
  }
}
