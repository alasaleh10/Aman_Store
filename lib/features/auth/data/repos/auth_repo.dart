import 'package:aman_store2/core/networking/api_error_handler.dart';

import 'package:aman_store2/features/auth/data/auth_servises.dart';
import 'package:aman_store2/features/auth/data/model/signup_request_body.dart';
import 'package:aman_store2/features/auth/data/model/signup_response.dart';

import '../../../../core/networking/api_result.dart';
import '../model/user_model.dart';

class AuthRepo {
  final AuthServices _authServices;

  AuthRepo(this._authServices);

  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      var response = await _authServices.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<UserModel>> virifyCode(Map<String, dynamic> data) async {
    try {
      var response = await _authServices.virifyCode(data);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult<UserModel>> login(Map<String, dynamic> data) async {
    try {
      var response = await _authServices.login(data);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult> forgetPassword(String email) async {
    try {
      var response = await _authServices.forgetPassword({'email': email});
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }

  Future<ApiResult> restPassword(
      {required String password,
      required String confirm,
      required String email}) async {
    try {
      var response = await _authServices.restPassword(
          {'password': password, 'confirmPassword': confirm, 'email': email});
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
