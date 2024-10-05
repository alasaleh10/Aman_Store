import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/cart/data/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/cart_delivery_model.dart';
import 'cart_delivery_state.dart';

class CartDeliveryCubit extends Cubit<CartDeliveryState> {
  final CartRepo _cartRepo;

  CartDeliveryCubit(this._cartRepo) : super(const CartDeliveryState.initial());
  int total = 0;
  List<Map<String,dynamic>> items=[];
  bool isDelivery = false;
  bool isFastDelivery = false;
  CartDeliveryModel? cartDeliveryModel;
  int deliveryTotal = 0;
  int? location;
  void cartDelivery() async {
    emit(const CartDeliveryState.loading());
    if (await isConncection()) {
      var response = await _cartRepo.cartDelivery();

      response.when(success: (data) {
        cartDeliveryModel = data;
        location=data.locationModel.id;
        
        deliveryTotal = data.delivery?.toInt() ?? 0;
        emit(CartDeliveryState.sucsess(cartDeliveryModel!));
      }, failure: (failure) {
        if (failure.message == 'يجب تحديد الموقع الرئيسي') {
          emit(CartDeliveryState.noLocation(failure.message!));
        } else {
          emit(CartDeliveryState.failure(failure.message ?? ''));
        }
      });
    } else {
      emit(const CartDeliveryState.noInternet());
    }
  }

  void setIsDelivery(bool val) {
    isDelivery = val;
    if (val == false) {
      location=null;
      deliveryTotal = 0;
      emit(const CartDeliveryState.initial());
    }
  }

  void setFastingDelivery(bool val) {
    if (cartDeliveryModel != null) {
      emit(const CartDeliveryState.initial());
      isFastDelivery = val;
      if (val) {
        deliveryTotal += 2000;
      } else {
        deliveryTotal -= 2000;
      }
      emit(CartDeliveryState.sucsess(cartDeliveryModel!));
    }
  }
}
