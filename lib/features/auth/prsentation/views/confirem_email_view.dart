import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/confirm_email_cuibt/confirm_email_cubit.dart';
import 'widgets/confirm_email_body_view.dart';

class ConfirmEmailView extends StatelessWidget {
  final List data;

  const ConfirmEmailView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConfirmEmailCubit(gitIt()),
      child: PopScope(
        canPop: false,
        child: Scaffold(
          appBar: AppBar(
            leading: const SizedBox(),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: ConfirmEmailBodyView(
            index: data[0],
            email: data[1],
          ),
        ),
      ),
    );
  }
}
