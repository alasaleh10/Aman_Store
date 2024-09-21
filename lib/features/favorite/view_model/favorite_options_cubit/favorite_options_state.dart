import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_options_state.freezed.dart';
@freezed
class FavoriteOptionsState with _$FavoriteOptionsState {
  const factory FavoriteOptionsState.initial() = Initial;

  const factory FavoriteOptionsState.loading() = Loading;

  const factory FavoriteOptionsState.sucsess(String  message) = Sussess;

  const factory FavoriteOptionsState.error(String error) = Error;

}
