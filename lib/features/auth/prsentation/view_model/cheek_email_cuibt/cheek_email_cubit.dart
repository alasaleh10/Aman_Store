

import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cheek_email_state.dart';


class CheekEmailCubit extends Cubit<CheekEmailState> {
  final AuthRepo _authRepo;
  CheekEmailCubit(this._authRepo) : super(const CheekEmailState.initial());
  final key=GlobalKey<FormState>();
  final email=TextEditingController();

  void cheekEmail()async
  {
   

    if(key.currentState!.validate())
    {
      emit(const CheekEmailState.loading());

      if(await isConncection())
      {
        var response=await _authRepo.forgetPassword(email.text.trim());
        response.when(success: (v)
        {
          emit(const CheekEmailState.sucsess());
        }, failure: (message)
        {
          emit(CheekEmailState.failure(message.message!));
        });

      }
      else
      {
        emit(const CheekEmailState.noInternet());
      }
    
    }

  }
}
