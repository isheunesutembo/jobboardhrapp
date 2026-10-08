

import 'package:dio/dio.dart';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/core/network/dio_auth_interceptor.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';

Dio createDio(
  LocalAuthRepository localAuthRepository,
  void Function()onSessionExpired
){
final baseOptions =BaseOptions(
  baseUrl: AppConfig.baseUrl,
  connectTimeout: const Duration(seconds: 15),
  receiveTimeout: const Duration(seconds: 15),
  headers: {
    "Accept":"application/json",
    "Content-Type":"application/json"
  }
);

final dio=Dio(baseOptions);
final refreshDio=Dio(baseOptions);

dio.interceptors.add(
  AuthInterceptor(dio: dio, refreshDio: refreshDio, localAuthRepository: localAuthRepository, onSessionExpired: onSessionExpired)
);
return dio;
}