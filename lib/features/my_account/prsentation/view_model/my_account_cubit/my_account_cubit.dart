import 'dart:io';

import 'package:aman_store2/features/my_account/data/account_repo.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/my_account_cubit/my_account_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/functions/cheek_internet.dart';
import 'package:image_picker/image_picker.dart';

class MyAccountCubit extends Cubit<MyAccountState> {
  final AccountRepo _accountRepo;
  MyAccountCubit(this._accountRepo) : super(const MyAccountState.initial());

  File? file;

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

  void chooseImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      file = File(pickedFile.path);

      changeImage();
    }
  }

  void changeImage() async {
    if (file != null) {
      if (await isConncection()) {
        var response = await _accountRepo.editImage(file!);
        response.when(success: (done) {
          emit(MyAccountState.editImage(done));
        }, failure: (failure) {
          emit(MyAccountState.failure2(failure.message ?? 'فشلةالعملية'));
        });
      } else {
        emit(const MyAccountState.failure2('لا يوجد اتصال بالانترنت'));
      }
    }
  }
}
