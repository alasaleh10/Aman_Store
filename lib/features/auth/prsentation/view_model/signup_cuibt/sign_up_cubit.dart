import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/auth/data/model/signup_request_body.dart';
import 'package:aman_store2/features/auth/data/repos/auth_repo.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo _authRepo;
  SignUpCubit(this._authRepo) : super(const SignUpState.initial());
  final key = GlobalKey<FormState>();
  final name1 = TextEditingController();
  final name2 = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final password1 = TextEditingController();
  final password2 = TextEditingController();

  void cheekData() async {
    if (key.currentState!.validate()) {
      emit(const SignUpState.loading());
      if (await isConncection()) {
        signUp();
      } else {
        emit(SignUpState.failure('interNetConntction'.tr()));
      }
    }
  }

  void signUp() async {
   
    var response = await _authRepo.signUp(SignUpRequestBody(
        firstName: name1.text,
        lastName: name1.text.trim().isNotEmpty ? name2.text : null,
        email: email.text,
        phone: phone.text,
        password: password1.text,
        confirmPassword: password2.text));
    response.when(success: (user) {
      emit(SignUpState.sucsess(user));
    }, failure: (failure) {
      emit(SignUpState.failure(failure.message!));
    });
  }
}
