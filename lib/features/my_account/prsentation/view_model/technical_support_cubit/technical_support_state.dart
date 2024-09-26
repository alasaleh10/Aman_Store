import 'package:freezed_annotation/freezed_annotation.dart';
part 'technical_support_state.freezed.dart';

@freezed
class TechnicalSupportState with _$TechnicalSupportState {
  const factory TechnicalSupportState.initial() = Initial;
  const factory TechnicalSupportState.loading() = Loading;
  const factory TechnicalSupportState.sucsess(String message) = Sucsess;
  const factory TechnicalSupportState.failure(String message) = Failure;
  const factory TechnicalSupportState.noInternet() = NoInternet;
}
