import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/networking/api_constanses.dart';
part 'notification_servisess.g.dart';
@RestApi(baseUrl: ApiConstanses.baseUrl)
abstract class NotificationServess
{
  factory NotificationServess(Dio dio,{String baseUrl}) = _NotificationServess;

  @GET(ApiConstanses.notifications)
  Future<dynamic> getNotifications();
}