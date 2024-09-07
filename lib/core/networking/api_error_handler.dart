// import 'package:dio/dio.dart';

// import 'api_error_model.dart';

// class ApiErrorErrorHandler {
//   static ApiErrorModel handle(dynamic error) {
//     if (error is DioException) {
//       switch (error.type) {
//         case DioExceptionType.connectionTimeout:
//           return ApiErrorModel(message: 'إنتهت مهلة الإتصال');

//         case DioExceptionType.sendTimeout:
//           return ApiErrorModel(message: 'إنتهت مهلة الإرسال');

//         case DioExceptionType.receiveTimeout:
//           return ApiErrorModel(message: 'إنتهت مهلة الأستلام');

//         case DioExceptionType.badResponse:
//           return ApiErrorModel(message: 'خطأ في السيرفر');

//         case DioExceptionType.cancel:
//           return ApiErrorModel(message: 'تم الغاء الطلب');

//         default:
//           return ApiErrorModel(message: 'خطأ غير معروف');
//       }
//     } else {}
//   }
// }

import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
        return ApiErrorModel(message: 'فشل في الاتصال بالسيرفر');
        case DioExceptionType.cancel:
         return ApiErrorModel(message: 'تم الغاء الطلب');
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: 'إنتهت مهلة الإتصال');
        case DioExceptionType.unknown:
                 return ApiErrorModel(message: 'فشل في الاتصال بالسيرفر');

        case DioExceptionType.receiveTimeout:
         return ApiErrorModel(message: 'إنتهت مهلة الأستلام');
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
         return ApiErrorModel(message: 'إنتهت مهلة الإرسال');
        default:
          return ApiErrorModel(message: 'خطأ غير معروف');
      }
    } else {
      // return ApiErrorModel(message: "Unknown error occurred");
      return ApiErrorModel(message: error.toString());
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    message: data['message'] ?? 'خطأ غير معروف',
    status: data['status']??false,
    statusCode: data['statusCode']??500,

    
  );
}