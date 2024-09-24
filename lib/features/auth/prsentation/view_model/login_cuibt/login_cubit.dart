import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/core/helper/secure_storage.dart';
import 'package:aman_store2/core/networking/dio_factory.dart';
import 'package:aman_store2/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_constsans.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepo _authRepo;
  LoginCubit(this._authRepo) : super(const LoginState.initial());

  final key = GlobalKey<FormState>();
  final phone = TextEditingController();
  final password = TextEditingController();

  void cheekData() async {
    if (key.currentState!.validate()) {
      emit(const LoginState.loading());
      if (await isConncection()) {
        login();
      } else {
        emit(const LoginState.noInternet());
      }
    }
  }

  void login() async {
    var result = await _authRepo
        .login({'phone': phone.text.trim(), 'password': password.text.trim()});
    result.when(success: (user) async {
      if (user.user.isApproved == true) {
        await SecureStorage.saveData(
            key: AppConstants.token, value: user.token ?? '');
      }
      DioFactory.setTokenIntoHeaderAfterLogin(user.token ?? '');
      emit(LoginState.sucsess(user));
    }, failure: (failure) {
      emit(LoginState.failure(failure.message!));
    });
  }
}
