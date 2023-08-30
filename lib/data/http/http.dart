import 'package:dio/dio.dart';

final httpClient = Dio(
  BaseOptions(baseUrl: 'https://apify.epayco.co', headers: {
    'Content-Type': 'application/json',
  }),
);
