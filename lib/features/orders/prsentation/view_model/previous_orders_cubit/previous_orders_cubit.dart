
import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/orders_repo.dart';
import 'previous_orders_state.dart';

class PreviousOrdersCubit extends Cubit<PreviousOrdersState> {
  final OrdersRepo _ordersRepo;
  PreviousOrdersCubit(this._ordersRepo) : super(const PreviousOrdersState.initial());

  void getPreviousOrders()async
  {
    emit(const PreviousOrdersState.loading());
    if(await isConncection())
    {
      var response=await _ordersRepo.getPreviousOrders();
      response.when(success: (data)
      {
        emit(PreviousOrdersState.success(data));
      }, failure: (failure)
      {
        emit(PreviousOrdersState.failure(failure.message??'فشلة العملية'));
      });

    }
    else
    {
      emit(const PreviousOrdersState.noInternet());
    }

  }
}
