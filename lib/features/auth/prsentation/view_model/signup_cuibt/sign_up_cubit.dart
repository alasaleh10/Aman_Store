import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/auth/data/model/signup_request_body.dart';
import 'package:aman_store2/features/auth/data/repos/auth_repo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/validations/remove_symbols.dart';
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
        emit(const SignUpState.noIntetnet());
      }
    }
  }

  void signUp() async {
    var response = await _authRepo.signUp(
      SignUpRequestBody(
        firstName: removeSymbols(name1.text),
        lastName:
            name2.text.trim().isNotEmpty ? removeSymbols(name2.text) : null,
        email: removeSymbols(email.text),
        phone: removeSymbols(phone.text),
        password: removeSymbols(password1.text),
        confirmPassword: removeSymbols(password2.text),
      ),
    );
    response.when(success: (user) {
      emit(SignUpState.sucsess(user));
    }, failure: (failure) {
      emit(SignUpState.failure(failure.message!));
    });
  }
}
