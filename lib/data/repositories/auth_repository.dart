import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:epayco_flutter/data/http/http.dart';
import 'package:epayco_flutter/data/models/auth_response.dart';
import 'package:epayco_flutter/domain/errors/failure.dart';
import 'package:epayco_flutter/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  @override
  Future<Either<Failure, AuthResponse>> getJWTToken({
    required String publicKey,
    required String privateKey,
  }) async {
    try {
      final authorization = base64Encode(utf8.encode('$publicKey:$privateKey'));
      final response = await httpClient.post(
        '/login',
        options: Options(
          headers: {
            'Authorization': 'Basic $authorization',
          },
        ),
        data: jsonEncode({
          'public_key': publicKey,
          'private_key': privateKey,
        }),
      );
      final authResponse = AuthResponse.fromJson(response.data);
      return Right(authResponse);
    } catch (e) {
      return Left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }
}
