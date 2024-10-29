import 'package:aman_store2/core/functions/cheek_internet.dart';
import 'package:aman_store2/features/notifications/data/notification_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final NotificationRepo _notificationRepo;
  NotificationsCubit(this._notificationRepo)
      : super(const NotificationsState.initial());
  void getNotifications() async {
    emit(const NotificationsState.loading());
    if (await isConncection()) {
      var response = await _notificationRepo.getNotifications();
      response.when(success: (notifications) {
        emit(NotificationsState.sucsess(notifications));
      }, failure: (failure) {
        emit(NotificationsState.error(failure.message!));
      });
    } else {
      emit(const NotificationsState.noInternet());
    }
  }
}
