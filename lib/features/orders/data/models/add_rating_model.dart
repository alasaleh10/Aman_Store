import 'package:json_annotation/json_annotation.dart';
part 'add_rating_model.g.dart';
@JsonSerializable()
class AddRatingModel
{
  final int order;
  final int feadback;
  final int rating;
  final String? comment;

  AddRatingModel(this.order, this.feadback, this.rating, this.comment);
  Map<String,dynamic> toJson()=>_$AddRatingModelToJson(this);


}