import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/orders/data/orders_repo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'current_orders_state.dart';

class CurrentOrdersCubit extends Cubit<CurrentOrdersState> {
  final OrdersRepo _ordersRepo;
  CurrentOrdersCubit(this._ordersRepo)
      : super(const CurrentOrdersState.initial());
  void getMyCurrentOrders() async {
    emit(const CurrentOrdersState.loading());
    if (await isConncection()) {
      var response = await _ordersRepo.getMyCurrentOrderss();
      response.when(success: (data) {
        emit(CurrentOrdersState.success(data));
      }, failure: (failure) {
        emit(CurrentOrdersState.failure(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const CurrentOrdersState.noInternet());
    }
  }
}
