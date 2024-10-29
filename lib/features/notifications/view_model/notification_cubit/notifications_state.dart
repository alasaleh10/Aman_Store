
import 'package:aman_store2/features/notifications/data/model/notification_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notifications_state.freezed.dart';
@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = NotificationsInitial;
  const factory NotificationsState.loading() = NotificationsLoading;
  const factory NotificationsState.sucsess( List<NotificationModel> notifications) = NotificationsSucsess;
  const factory NotificationsState.error( String error) = NotificationsError;
  const factory NotificationsState.noInternet() = NotificationsNoInternet;

}
