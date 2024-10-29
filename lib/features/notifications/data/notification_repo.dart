import 'package:aman_store2/core/networking/api_result.dart';
import 'package:aman_store2/features/notifications/data/model/notification_model.dart';
import 'package:aman_store2/features/notifications/data/notification_servisess.dart';

import '../../../core/networking/api_error_handler.dart';

class NotificationRepo {
  final NotificationServess _notificationServess;
  NotificationRepo(this._notificationServess);

  Future<ApiResult<List<NotificationModel>>> getNotifications() async {
    try {
      List<NotificationModel> notifications = [];
      var response = await _notificationServess.getNotifications();

      for (var item in response['notifications']) {
        notifications.add(NotificationModel.fromJson(item));
      }
      return ApiResult.success(notifications);
    } catch (err) {
      return ApiResult.failure(ApiErrorHandler.handle(err));
    }
  }
}
