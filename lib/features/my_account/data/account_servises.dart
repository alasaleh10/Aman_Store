import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/models/done_model.dart';
import '../../../core/networking/api_constanses.dart';
import '../../auth/data/model/user_model.dart';
import 'models/faq_questions_model.dart';
part 'account_servises.g.dart';
@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class AccountServices {
  factory AccountServices(Dio dio, {String baseUrl}) = _AccountServices;

  @GET(ApiConstanses.me)
  Future<UserModel> getMyAccount();
  @PUT(ApiConstanses.editMyAccount)
  Future<DoneModel> editAccount(@Body() Map<String, dynamic> data);
  @POST(ApiConstanses.addProblem)
  Future<DoneModel> addProblem(@Body() Map<String, dynamic> data);
  @GET(ApiConstanses.getFaqQusetions)
  Future<Questions> getFaqQusetions(@Query('page') int page);
}