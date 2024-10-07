import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/cart/data/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_products_state.dart';

class CartProductsCubit extends Cubit<CartProductsState> {
  final CartRepo _cartRepo;
  CartProductsCubit(this._cartRepo) : super(const CartProductsState.initial());
  int totalPrice = 0;
  List<Map<String, dynamic>> items = [];
  void getCart({bool isFromcart = false}) async {
    if (!isFromcart) {
      emit(const CartProductsState.loading());
    }

    if (await isConncection()) {
      var response = await _cartRepo.myCart();
      response.when(success: (cartModel) {
        items.clear();
        items = cartModel.items.map((val) {
          

          return {
            'id': val.id!,
            'quantity': val.quantity!,
            'price': val.priceAfterDiscount,
          };
        }).toList();
        totalPrice = cartModel.totalPrice!;
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

  void cartOpretions(int product, bool isAdding) async {
    if (await isConncection()) {
      var response = isAdding
          ? await _cartRepo.addToCart(product)
          : await _cartRepo.removeToCart(product);
      response.when(success: (doneModel) {
        emit(CartProductsState.sucsess2(doneModel.message));
      }, failure: (err) {
        emit(CartProductsState.failure(err.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const CartProductsState.failure('لا يوجد اتصال بالانترنت '));
    }
  }

  void cheekCartItemsQuantity() async {
    emit(const CartProductsState.loading3());
    if (await isConncection()) {
      var response = await _cartRepo.cheekCartItemsQuantity();
      response.when(success: (done) {
        emit(CartProductsState.sucsess3(done.message));
      }, failure: (err) {
        emit(CartProductsState.failure3(err.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const CartProductsState.failure3('لا يوجد اتصال بالانترنت '));
    }
  }
}
