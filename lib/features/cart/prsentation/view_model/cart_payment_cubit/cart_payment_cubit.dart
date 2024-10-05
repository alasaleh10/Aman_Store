import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/cart/data/cart_repo.dart';
import 'package:aman_store2/features/cart/data/models/cart_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/add_order_request_model.dart';
import '../../../data/models/go_payment_model.dart';
import 'cart_payment_state.dart';

class CartPaymentCubit extends Cubit<CartPaymentState> {
  final CartRepo _cartRepo;

  CartPaymentCubit(this._cartRepo) : super(const CartPaymentState.initial());
  Color continerColor = AppColors.kPrimColor;
  String continerText = 'activition'.tr();
  CartModel? cartModel;
  GoPaymentModel? goPaymentModel;
  final coupon = TextEditingController();
  bool isActive = true;
  int coupone = 0;
  int discount = 0;
  int? type, couponId;
  int paymentType = 1;

  void cheekCopone() async {
    type = 0;
    activeCoupone();
    isActive = !isActive;
    emit(const CartPaymentState.loading());
    if (await isConncection()) {
      var response = await _cartRepo.cheekCoupon(coupon.text.trim());
      response.when(success: (code) {
        couponId = code.id;
        paymentType = 1;
        type = null;

        coupone = code.discount;
        discount = ((cartModel!.total + cartModel!.delivery) * (coupone / 100))
            .toInt();
        // totalAfterDiscount = (cartModel.total + cartModel.delivery) - discount;
        emit(CartPaymentState.success2(code));
      }, failure: (failure) {
        isActive = true;
        clearCoupone();
        emit(CartPaymentState.failure(failure.message ?? 'فشلة العملية'));
      });
    } else {
      isActive = true;

      clearCoupone();
      emit(const CartPaymentState.failure('لا يوجد اتصال بالانترنت'));
    }
  }

  void clearCoupone({bool isClear = false}) {
    continerColor = AppColors.kPrimColor;
    continerText = 'activition'.tr();
    if (isClear) {
      discount = 0;
      isActive = true;
      paymentType = 1;
      couponId = null;
      coupon.clear();
      emit(const CartPaymentState.initial());
    }
  }

  void activeCoupone() {
    continerColor = const Color(0xffDC4C30);
    continerText = 'delete'.tr();
  }

  void cheekMyWallet() async {
    type = 1;
    emit(const CartPaymentState.loading());
    if (await isConncection()) {
      int totalAll = (cartModel!.total + cartModel!.delivery) - discount;
      var response = await _cartRepo.cheekMyWallet(totalAll);
      response.when(success: (wallet) {
        paymentType = 2;
        type = null;

        emit(const CartPaymentState.success3());
      }, failure: (failure) {
        emit(CartPaymentState.failure(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const CartPaymentState.failure('لا يوجد اتصال بالانترنت'));
    }
  }

  void changePaymentType(int index) {
    paymentType = index;
    if (state is Initial) {
      emit(const CartPaymentState.success3());
    } else {
      emit(const CartPaymentState.initial());
    }
  }

  void addOrder() async {
    type = 2;

    emit(const CartPaymentState.loading());
    int totalOrder = discount == 0
        ? (cartModel!.total + cartModel!.delivery) - discount
        : ((cartModel!.total + cartModel!.delivery) - discount) *
            coupone ~/
            100;
    AddOrderRequestModel addOrderRequestModel = AddOrderRequestModel(
        totalOrderPrice: totalOrder,
        totalCart: goPaymentModel!.cartModel.total,
        coupon: couponId,
        deliveryPrice: goPaymentModel!.cartModel.delivery,
        isDelivery: goPaymentModel!.isDelivery,
        isFastDelivery: goPaymentModel!.isFastingDelivery,
        location: goPaymentModel!.location,
        paymentType: paymentType,
        items: goPaymentModel!.items);
    if (await isConncection()) {
      var response = await _cartRepo.addOrder(addOrderRequestModel);
      response.when(success: (data) {
        type = null;
        emit(CartPaymentState.success4(data));
      }, failure: (failure) {
        emit(CartPaymentState.failure(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const CartPaymentState.failure('لا يوجد اتصال بالانترنت'));
    }
  }
}
