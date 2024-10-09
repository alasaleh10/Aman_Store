import 'package:json_annotation/json_annotation.dart';

import '../../../../core/models/product_model/product_model.dart';
import '../../../categoriess/data/models/all_categoriess_model.dart';
import 'bannar_model.dart';
part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: 'locationName')
  final String? locationName;
  @JsonKey(name: 'banars')
  final List<BannarsModel> banars;
  @JsonKey(name: 'categorie')
  final List<CategorieeModel> categories;
  @JsonKey(name: 'bestSellingProducts')
  final List<ProductModel> bestSellingProducts;

  HomeModel(this.banars, this.categories, this.bestSellingProducts,this.locationName);
  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
