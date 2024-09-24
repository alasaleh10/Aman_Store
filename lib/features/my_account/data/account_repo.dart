import 'package:aman_store2/core/models/done_model.dart';
import 'package:aman_store2/features/auth/data/model/user_model.dart';
import 'package:aman_store2/features/my_account/data/models/faq_questions_model.dart';

import '../../../core/networking/api_error_handler.dart';
import '../../../core/networking/api_result.dart';
import 'account_servises.dart';

class AccountRepo {
  final AccountServices _accountServices;

  AccountRepo(this._accountServices);

  Future<ApiResult<UserModel>> getMyAccount() async {
    try {
      var response = await _accountServices.getMyAccount();
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> editAccount(Map<String, dynamic> data) async {
    try {
      var response = await _accountServices.editAccount(data);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<DoneModel>> addPRoblem(Map<String, dynamic> data) async {
    try {
      DoneModel response = await _accountServices.addProblem(data);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }

  Future<ApiResult<Questions>> getFaqQusetions(int page) async {
    try {
      print(page);
      Questions response = await _accountServices.getFaqQusetions(page);
      return ApiResult.success(response);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }
}
