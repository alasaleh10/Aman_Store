import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/rest_password_cuibt/rest_password_cubit.dart';
import 'widgets/rest_password_body_view.dart';

class RestPasswordView extends StatelessWidget {
  final String email;
  const RestPasswordView({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestPasswordCubit(gitIt(),email),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:  RestPasswordBodyView(
          email: email,
        ),
      ),
    );
  }
}
