import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/core/helper/cached_helper.dart';
import 'package:aman_store2/features/auth/data/repos/auth_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'confirm_email_state.dart';

class ConfirmEmailCubit extends Cubit<ConfirmStatus> {
  final AuthRepo _authRepo;
  ConfirmEmailCubit(this._authRepo) : super(const ConfirmStatus.initial());

  String? otpCode;

  void confirmEmail(String email) async {
    if (otpCode == null) {
      emit(const ConfirmStatus.failure('أكمل جميع الحقول'));
    } else {
      emit(const ConfirmStatus.loading());
      if (await isConncection()) {
        var response =
            await _authRepo.virifyCode({'email': email, 'virifyCode': otpCode});
        response.when(success: (user) async {
          await CacheHelper.saveData(key: 'token', value: user.token);
          emit(ConfirmStatus.sucsess(user));
        }, failure: (failure) {
          emit(ConfirmStatus.failure(failure.message!));
        });
      } else {
        emit(const ConfirmStatus.noInternet());
      }
    }
  }
}
