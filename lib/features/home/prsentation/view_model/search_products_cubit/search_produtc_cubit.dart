import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/core/helper/sqflite_helper/sqflite_helper.dart';
import 'package:aman_store2/features/home/data/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_produtc_state.dart';

class SearchProdutcCubit extends Cubit<SearchProdutcState> {
  final HomeRepo _homeRepo;
  SearchProdutcCubit(this._homeRepo)
      : super(const SearchProdutcState.initial());
  final search = TextEditingController();

  void searchProduct() async {
    if (search.text.trim().isNotEmpty) {
      await _homeRepo.saveSearchTextToSqlite(search.text.trim());
      emit(const SearchProdutcState.loading());
      if (await isConncection()) {
        var response = await _homeRepo.searchProduct(search.text.trim());
        response.when(success: (product) {
          emit(SearchProdutcState.sucsess(product));
        }, failure: (error) {
          emit(SearchProdutcState.error(error.message ?? 'فشلة العملية'));
        });
      } else {
        emit(const SearchProdutcState.noInternet());
      }
    }
  }

  void clearSearch() {
    getSavedSearched();
  }

  void getSavedSearched() async {
    var response = await _homeRepo.getSearchTextFromSqlite();
    response.when(
        success: (savedSearch) {
          emit(SearchProdutcState.savedSearch(savedSearch));
        },
        failure: (failure) {});
  }

  void removeAllSearch() async {
    try {
      await SqlHelper.deletdata("DELETE FROM search");
      getSavedSearched();
    } catch (_) {}
  }
}
