
import 'package:aman_store2/features/home/data/models/home_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  factory HomeState.loading() = Loading;
  factory HomeState.sucsess(HomeModel homeModel) = Sucsess;
  factory HomeState.failure(String message) = Failure;
  factory HomeState.noInternet() = NoInternet;
  factory HomeState.failure2(String message) = Failure2;
  factory HomeState.sucsess2(String message) = Sucsess2;


  
}
