import 'package:json_annotation/json_annotation.dart';
part 'notification_model.g.dart';
@JsonSerializable()
class NotificationModel
{
   int? id;
  String? title;
  String? body;
  String? image;
  String? createdAt;


  NotificationModel({
    this.id,
    this.title,
    this.body,
    this.image,
    this.createdAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
  _$NotificationModelFromJson(json);



}