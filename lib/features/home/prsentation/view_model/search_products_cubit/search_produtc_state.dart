import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/models/product_model/list_product_model.dart';
import '../../../data/models/search_model.dart';
part 'search_produtc_state.freezed.dart';

@freezed
class SearchProdutcState with _$SearchProdutcState {
  const factory SearchProdutcState.initial() = Initial;
  const factory SearchProdutcState.loading() = Loading;
  const factory SearchProdutcState.sucsess(ListProductModel listProductModel) =
      Sucsess;
  const factory SearchProdutcState.error(String error) = Error;
  const factory SearchProdutcState.noInternet() = Nointernet;
  const factory SearchProdutcState.savedSearch(List<SearchModel> savedSearch) =
      SavedSearch;
}
