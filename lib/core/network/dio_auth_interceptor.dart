import 'package:dio/dio.dart';
import 'package:jobboardhrapp/config/app_config.dart';
import 'package:jobboardhrapp/features/auth/data/repositories/local_auth_repository.dart';

class AuthInterceptor extends QueuedInterceptor {
  final Dio _dio;
  final Dio _refreshDio;
  final LocalAuthRepository _localAuthRepository;
  final void Function() _onSessionExpired;

  AuthInterceptor({
    required Dio dio,
    required Dio refreshDio,
    required LocalAuthRepository localAuthRepository,
    required void Function() onSessionExpired,
  }) : _dio = dio,
       _refreshDio = refreshDio,
       _localAuthRepository = localAuthRepository,
       _onSessionExpired = onSessionExpired;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = _localAuthRepository.getUserToken();

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final isUnauthorized = err.response?.statusCode == 401;

    final alreadyRetried = err.requestOptions.extra['retried'] == true;

    if (!isUnauthorized || alreadyRetried) {
      return handler.next(err);
    }

    try {
      final currentToken = _localAuthRepository.getUserToken();
      final failedWith = err.requestOptions.headers['Authorization'];

      final alreadyRefreshed =
          currentToken != null && failedWith != 'Bearer $currentToken';

      if (!alreadyRefreshed) {
        await _refreshTokens();
      }
      final response = await _retry(err.requestOptions);
      return handler.resolve(response);
    } on DioException catch (e) {
      return handler.next(e);
    } catch (_) {
      return handler.next(err);
    }
  }

  Future<void> _refreshTokens() async {
    final refreshToken = _localAuthRepository.getRefreshToken();
    if (refreshToken == null) {
      await _expireSession();
      throw DioException(
        requestOptions: RequestOptions(path: ''),
        message: "No refresh token",
      );
    }
    try {
      final response = await _refreshDio.post(
        AppConfig.refreshTokenUrl,
        data: {'refreshToken': refreshToken},
      );

      _localAuthRepository.setToken(response.data['accessToekn']);
      _localAuthRepository.setRefreshToken(response.data['refreshToken']);
    } on DioException {
      await _expireSession();
      rethrow;
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions options) async {
    final token = _localAuthRepository.getUserToken();
    options.headers['Authorization'] = 'Bearer $token';
    options.extra['retried'] = true;
    return _dio.fetch(options);
  }

  Future<void> _expireSession() async {
    await _localAuthRepository.clearTokens();
    _onSessionExpired();
  }
}
