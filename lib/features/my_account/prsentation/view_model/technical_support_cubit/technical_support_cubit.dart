import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/features/my_account/data/account_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'technical_support_state.dart';

class TechnicalSupportCubit extends Cubit<TechnicalSupportState> {
  final AccountRepo _accountRepo;
  TechnicalSupportCubit(this._accountRepo)
      : super(const TechnicalSupportState.initial());

  String problemType = 'إقتراح';
  final key = GlobalKey<FormState>();
  final problebTitle = TextEditingController();
  final messageDetils = TextEditingController();
  Map<String, dynamic> data = {};

  void openTelephone(BuildContext context) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '777616028');
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      // ignore: use_build_context_synchronously
      showSnackBar(context, message: 'لا يمكن فتح تطبيق الهاتف');
    }
  }

  void sendProblem() async {
    if (key.currentState!.validate()) {
      data.clear();
      data['type'] = problemType;
      data['title'] = problebTitle.text.trim();
      if (messageDetils.text.trim().isNotEmpty) {
        data['discription'] = messageDetils.text.trim();
      }
      emit(const TechnicalSupportState.loading());
      if (await isConncection()) {
        var response = await _accountRepo.addPRoblem(data);
        response.when(success: (done) {
          problebTitle.clear();
          messageDetils.clear();
          emit(TechnicalSupportState.sucsess(done.message));
        }, failure: (failure) {
          emit(TechnicalSupportState.failure(failure.message ?? 'حدث خطأ ما'));
        });
      } else {
        emit(const TechnicalSupportState.noInternet());
      }
    }
  }
}
