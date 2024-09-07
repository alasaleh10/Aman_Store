

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final key=GlobalKey<FormState>();
  final email= TextEditingController();
  final password= TextEditingController();
  

  void cheekData()
  {
    if(key.currentState!.validate())
    {
      login();
    }
  }
  
  void login() 
  {
    emit(LoginLoading());
    Future.delayed(const Duration(seconds: 2),()
    {
      emit(LoginSucsess());
    });
  }


  


}
