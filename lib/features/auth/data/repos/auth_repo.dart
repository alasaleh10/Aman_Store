import 'package:aman_store2/core/networking/api_error_handler.dart';
import 'package:aman_store2/features/auth/data/auth_servises.dart';
import 'package:aman_store2/features/auth/data/model/signup_request_body.dart';
import 'package:aman_store2/features/auth/data/model/signup_response.dart';

import '../../../../core/networking/api_result.dart';

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
}
