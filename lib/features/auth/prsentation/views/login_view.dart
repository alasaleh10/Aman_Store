import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/login_cuibt/login_cubit.dart';
import 'widgets/login_body_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => LoginCubit(),
      child:const Scaffold(
        body: SafeArea(
          child: LoginBodyView(),
        ),
      ),
    );
  }
}
