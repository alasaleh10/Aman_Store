import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../view_model/confirm_email_cuibt/confirm_email_cubit.dart';

class SendCodeRow extends StatefulWidget {
  final String email;
  const SendCodeRow({super.key, required this.email});

  @override
  State<SendCodeRow> createState() => _SendCodeRowState();
}

class _SendCodeRowState extends State<SendCodeRow> {
  late Stream<int> countdownStream;
  late StreamSubscription<int> countdownSubscription;
  int start = 60;

  Stream<int> startCountdown(int seconds) async* {
    for (int i = seconds; i >= 0; i--) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  void startTimer() {
    start = 60;
    countdownStream = startCountdown(start);
    countdownSubscription = countdownStream.listen((remainingSeconds) {
      if (!mounted) return;
      setState(() {
        start = remainingSeconds;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    countdownSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: start == 0
          ? GestureDetector(
              onTap: () {
                startTimer();
                context.read<ConfirmEmailCubit>().resendCode(widget.email);
              },
              child: Text('sendAgain'.tr(), style: AppStyle.textStyleRegular14))
          : Text(
              '${'sendCodeAgain'.tr()} $start ${'second'.tr()}',
              style: AppStyle.textStyleRegular14,
            ),
    );
  }
}
