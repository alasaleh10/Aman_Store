import 'package:aman_store2/core/models/done_model.dart';
import 'package:aman_store2/core/networking/api_constanses.dart';
import 'package:aman_store2/features/auth/data/model/signup_request_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'model/signup_response.dart';
import 'model/user_model.dart';
part 'auth_servises.g.dart';

@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class AuthServices {
  factory AuthServices(Dio dio, {String baseUrl}) = _AuthServices;

  @POST(ApiConstanses.signUp)
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody signUpRequestBody);

  @POST(ApiConstanses.virifyCode)
  Future<UserModel> virifyCode(@Body() Map<String, dynamic> data);
  @POST(ApiConstanses.login)
  Future<UserModel> login(@Body() Map<String, dynamic> data);
  @POST(ApiConstanses.forgetPassword)
  Future forgetPassword(@Body() Map<String, dynamic> data);
  @PUT(ApiConstanses.restPassword)
  Future restPassword(@Body() Map<String, dynamic> data);
  @POST(ApiConstanses.sendCode)
  Future<DoneModel> resendCode(@Body() Map<String,dynamic> data);
}
