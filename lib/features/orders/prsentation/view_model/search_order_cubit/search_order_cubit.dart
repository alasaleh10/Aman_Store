
import 'package:aman_store2/features/orders/data/orders_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/functions/cheek_internet.dart';
import 'search_order_state.dart';

class SearchOrderCubit extends Cubit<SearchOrderState> {
  final OrdersRepo _ordersRepo;
  SearchOrderCubit(this._ordersRepo) : super(const SearchOrderState.initial());
  final id=TextEditingController();


  void searchOrder() async {
    emit(const SearchOrderState.loading());
    if (await isConncection()) {
      var response = await _ordersRepo.searchOrder(int.parse(id.text));
      response.when(success: (data) {
        emit(SearchOrderState.sucsess(data));
      }, failure: (failure) {
        emit(SearchOrderState.error(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const SearchOrderState.noInternet());
    }
  }
}
