import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/validations/remove_symbols.dart';
import 'rest_password_state.dart';

class RestPasswordCubit extends Cubit<RestPasswordState> {
  final String email;
  final AuthRepo _authRepo;
  RestPasswordCubit(this._authRepo, this.email)
      : super(const RestPasswordState.initial());
  final key = GlobalKey<FormState>();
  final password1 = TextEditingController();
  final password2 = TextEditingController();

  void restPassword() async {
    if (key.currentState!.validate()) {
      emit(const RestPasswordState.loading());
      if (await isConncection()) {
        var response = await _authRepo.restPassword(
            email: email,
            password: removeSymbols(password1.text),
            confirm: removeSymbols(password2.text));
        response.when(success: (val) {
          emit(const RestPasswordState.sucsess());
        }, failure: (failure) {
          emit(RestPasswordState.failure(failure.message!));
        });
      } else {
        emit(const RestPasswordState.noInternet());
      }
    }
  }
}
