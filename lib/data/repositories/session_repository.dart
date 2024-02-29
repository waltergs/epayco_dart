import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:epayco_dart/data/http/http.dart';
import 'package:epayco_dart/data/models/auth_response.dart';
import 'package:epayco_dart/domain/errors/failure.dart';
import 'package:epayco_dart/domain/repositories/auth_repository.dart';

class SessionRepositoryImpl implements IAuthRepository {
  @override
  Future<Either<Failure, AuthResponse>> getJWTToken({
    required String token,
    required String name,
    required String invoice,
    required String description,
    required String currency,
    required String amount,
    required String country,
    required String test,
    required String ip,
  }) async {
    try {     
      final response = await httpClient.post(
        '/payment/session/create',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        data: jsonEncode({          
          'name': name,
          'invoice': invoice,
          'description': description,
          'currency': currency,
          'amount': amount,
          'country': country,
          'test': test,
          'ip': ip
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
