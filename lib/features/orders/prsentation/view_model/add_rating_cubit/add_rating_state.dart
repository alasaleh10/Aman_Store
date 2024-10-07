
import 'package:aman_store2/core/models/done_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_rating_state.freezed.dart';
@freezed
class AddRatingState with _$AddRatingState {
  const factory AddRatingState.initial() = Initial;
  const factory AddRatingState.loading() = Loading;
  const factory AddRatingState.sucsess(DoneModel doneModel) = Sucsess;
  const factory AddRatingState.failure(String message) = Failure;
  const factory AddRatingState.noInternet() = NoInternet;
}
