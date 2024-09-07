import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    Duration duration = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = duration
        ..options.receiveTimeout = duration;
      addDioIndecator();
      addDioHeaders();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioIndecator() {
    if (kDebugMode) {
      dio?.interceptors.add(PrettyDioLogger(
        requestBody: true,
        responseHeader: true,
        requestHeader: true,
      ));
    }
  }
   static void addDioHeaders() async {
    dio?.options.headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};
  }
}
