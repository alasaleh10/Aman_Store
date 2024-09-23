import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/my_account/data/account_repo.dart';
import 'package:aman_store2/features/my_account/data/push_user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_my_account_state.dart';

class EditMyAccountCubit extends Cubit<EditMyAccountState> {
  final AccountRepo _accountRepo;
  final PushUserModel pushUserModel;
  EditMyAccountCubit(this._accountRepo, this.pushUserModel)
      : super(const EditMyAccountState.initial());

  final key = GlobalKey<FormState>();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phone = TextEditingController();
  Map<String, dynamic> data = {};

  void onInit() {
    firstName.text = pushUserModel.name;
    lastName.text = pushUserModel.name2 ?? "";
    phone.text = pushUserModel.phone;
  }

  void editMyAccount() async {
    if (key.currentState!.validate()) {
      emit(const EditMyAccountState.loading());
      if (await isConncection()) {
        data['firstName'] = firstName.text.trim();
        data['lastName'] = lastName.text.trim();
        if (pushUserModel.phone != phone.text.trim()) {
          data['phone'] = phone.text.trim();
        }
        var response = await _accountRepo.editAccount(data);
        response.when(success: (user) {
          emit(EditMyAccountState.sucsess(user.message));
        }, failure: (failure) {
          emit(EditMyAccountState.failure(failure.message ?? 'فشلةالعملية'));
        });
      } else {
        emit(const EditMyAccountState.noInternet());
      }
    }
  }
}
