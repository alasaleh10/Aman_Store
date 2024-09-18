import 'package:aman_store2/features/categoriess/data/models/all_categoriess_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'all_categoriees_state.freezed.dart';

@freezed
class AllCategorieesState with _$AllCategorieesState {
  const factory AllCategorieesState.initial() = Initial;
  const factory AllCategorieesState.loading() = Loading;
  const factory AllCategorieesState.success(AllCategoriessModel categoriess) =
      Success;
  const factory AllCategorieesState.error({required String error}) = Error;
  const factory AllCategorieesState.noInternet() = NoInternet;
}
