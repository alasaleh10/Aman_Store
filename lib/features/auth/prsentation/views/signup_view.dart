
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/depencency_injection.dart';
import '../view_model/signup_cuibt/sign_up_cubit.dart';
import 'widgets/signup_body_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(gitIt()),
      child: const Scaffold(
        body: SafeArea(
          child: SignUpBodyView(),
        ),
      ),
    );
  }
}
