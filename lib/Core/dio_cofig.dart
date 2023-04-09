import 'package:dio/dio.dart';

import 'Apis.dart';

class DioConfig {
  static final DioConfig _inheritance = DioConfig._init();

  static DioConfig get inheritance => _inheritance;

  DioConfig._init();

  Dio createRequest() {
    var dio = Dio(
      BaseOptions(
        baseUrl: Urls.baseUrl,
        validateStatus: (int? statusCode) {
          if (statusCode != null && (statusCode >= 100 && statusCode <= 211)) {
            return true;
          } else {
            return false;
          }
        },
        receiveDataWhenStatusError: true,
      ),
    );

    //* Time Out Configuration
    dio.options.connectTimeout = const Duration(seconds: 15);
    dio.options.receiveTimeout = const Duration(seconds: 15);
    dio.options.sendTimeout = const Duration(seconds: 15);

    return dio;
  }
}