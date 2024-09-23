import 'package:aman_store2/features/my_account/data/account_repo.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/my_account_cubit/my_account_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/functions/cheek_internet.dart';

class MyAccountCubit extends Cubit<MyAccountState> {
  final AccountRepo _accountRepo;
  MyAccountCubit(this._accountRepo) : super(const MyAccountState.initial());

  void getMyAccount({bool isFromEdit = false}) async {
    if (!isFromEdit) {
      emit(const MyAccountState.loading());
    }
    if (await isConncection()) {
      var response = await _accountRepo.getMyAccount();
      response.when(success: (user) {
        emit(MyAccountState.sucsess(user));
      }, failure: (failure) {
        emit(MyAccountState.failure(failure.message ?? 'فشلةالعملية'));
      });
    } else {
      emit(const MyAccountState.noInternet());
    }
  }
}
