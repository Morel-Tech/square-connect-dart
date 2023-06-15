import 'package:dio/dio.dart';

class SquareResponseInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    if (response != null) {
      handler.resolve(response);
    }
  }
}
