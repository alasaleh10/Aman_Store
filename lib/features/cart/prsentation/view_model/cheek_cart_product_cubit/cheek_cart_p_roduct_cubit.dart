import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/cart/data/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cheek_cart_p_roduct_state.dart';

class CheekCartPRoductCubit extends Cubit<CheekCartPRoductState> {
  final CartRepo _cartRepo;
  final int productID;
  CheekCartPRoductCubit(this._cartRepo, this.productID)
      : super(const CheekCartPRoductState.initial());

  int? type;
  int? count;
  void cheekCart() async {
    emit(const CheekCartPRoductState.loading());
    if (await isConncection()) {
      var response = await _cartRepo.cheekCartProduct(productID);
      response.when(success: (data) {
        emit(CheekCartPRoductState.sucsess(data));
      }, failure: (failure) {
        emit(CheekCartPRoductState.failure(failure.message ?? ''));
      });
    } else {
      emit(const CheekCartPRoductState.failure('لا يوجد اتصال بالانترنت'));
    }
  }

  void editCart() async {
    type = 0;

    if (count == null) {
      emit(const CheekCartPRoductState.failure2('اختر الكمية'));
    } else {
      emit(const CheekCartPRoductState.loading2());
      if (await isConncection()) {
        var response = await _cartRepo.editCart(count!, productID);
        response.when(success: (data) {
          emit(CheekCartPRoductState.sucsess2(data));
        }, failure: (failure) {
          emit(CheekCartPRoductState.failure2(failure.message ?? ''));
        });
      } else {
        emit(const CheekCartPRoductState.failure2('لا يوجد اتصال بالانترنت'));
      }
    }
  }

  void deleteProductFromCart() async {
    type = 1;
    emit(const CheekCartPRoductState.loading2());
    if (await isConncection()) {
      var response = await _cartRepo.deleteProductFromCart(productID);
      response.when(success: (data) {
        emit(CheekCartPRoductState.sucsess2(data));
      }, failure: (failure) {
        emit(CheekCartPRoductState.failure2(failure.message ?? ''));
      });
    } else {
      emit(const CheekCartPRoductState.failure2('لا يوجد اتصال بالانترنت'));
    }
  }
}
