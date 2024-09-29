import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/cart/data/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_products_state.dart';

class CartProductsCubit extends Cubit<CartProductsState> {
  final CartRepo _cartRepo;
  CartProductsCubit(this._cartRepo) : super(const CartProductsState.initial());

  void getCart({bool isFromcart = false}) async {
    if (!isFromcart) {
      emit(const CartProductsState.loading());
    }

    if (await isConncection()) {
      var response = await _cartRepo.myCart();
      response.when(success: (cartModel) {
        emit(CartProductsState.sucsess(cartModel));
      }, failure: (err) {
        if (isFromcart) {
          emit(CartProductsState.failure(err.message ?? 'فشلة العملية'));
        } else {
          emit(CartProductsState.error(err.message ?? 'فشلة العملية'));
        }
      });
    } else {
      if (isFromcart) {
        emit(const CartProductsState.failure('لا يوجد اتصال بالانترنت'));
      } else {
        emit(const CartProductsState.noInternet());
      }
    }
  }

  void cartOpretions(int product,bool isAdding) async {
    if (await isConncection()) {
      var response = isAdding?  await _cartRepo.addToCart(product):await _cartRepo.removeToCart(product);
      response.when(success: (doneModel) {
        emit( CartProductsState.sucsess2(doneModel.message));
      }, failure: (err) {
        emit(CartProductsState.failure(err.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const CartProductsState.failure('لا يوجد اتصال بالانترنت '));
    }
  }
}
