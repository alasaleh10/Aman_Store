import 'package:aman_store2/core/helper/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Future<Dio> getDio() async {
    Duration duration = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = duration
        ..options.receiveTimeout = duration;
      addDioIndecator();
      await addDioHeaders();
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

  static Future<void> addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${await SecureStorage.readData(key: 'token')}'
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }
}
