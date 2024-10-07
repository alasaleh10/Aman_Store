import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/core/validations/remove_symbols.dart';
import 'package:aman_store2/features/orders/data/models/add_rating_model.dart';
import 'package:aman_store2/features/orders/data/orders_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'add_rating_state.dart';

class AddRatingCubit extends Cubit<AddRatingState> {
  final int orderId;
  final OrdersRepo _ordersRepo;
  AddRatingCubit(this._ordersRepo, this.orderId)
      : super(const AddRatingState.initial());
  final commiet = TextEditingController();

  int rating = 2;
  int feabBack = 0;

  void addRating() async {
    emit(const AddRatingState.loading());
    if (await isConncection()) {
      var response = await _ordersRepo.addRating(AddRatingModel(
          orderId,
          feabBack,
          rating,
          commiet.text.trim().isEmpty ? null : removeSymbols(commiet.text)));
      response.when(success: (data) {
        commiet.clear();
        emit(AddRatingState.sucsess(data));
      }, failure: (failure) {
        emit(AddRatingState.failure(failure.message ?? 'فشلة العملية'));
      });
    } else {
      emit(const AddRatingState.loading());
    }
  }
}
