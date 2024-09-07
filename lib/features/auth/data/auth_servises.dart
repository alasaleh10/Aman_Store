import 'package:aman_store2/core/networking/api_constanses.dart';
import 'package:aman_store2/features/auth/data/model/signup_request_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'model/signup_response.dart';
part 'auth_servises.g.dart';
@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class AuthServices {

  factory AuthServices(Dio dio, {String baseUrl}) = _AuthServices;

  @POST(ApiConstanses.signUp)
  Future<SignUpResponse> signUp(
    @Body()
     SignUpRequestBody signUpRequestBody);
}