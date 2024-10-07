import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/orders/data/orders_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_detils_state.dart';

class OrderDetilsCubit extends Cubit<OrderDetilsState> {
  final int orderId;
  final OrdersRepo _ordersRepo;
  OrderDetilsCubit(this._ordersRepo, this.orderId)
      : super(const OrderDetilsState.initial());

  void getOrderDetils() async {
    emit(const OrderDetilsState.loading());
    if (await isConncection()) {
      var response = await _ordersRepo.getOrderDetils(orderId);
      response.when(success: (data) {
        emit(OrderDetilsState.sucsess(data));
      }, failure: (failure) {
        emit(OrderDetilsState.failure(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const OrderDetilsState.noInternet());
    }
  }
}
