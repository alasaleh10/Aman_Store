class SearchModel
{
  int? id;
  String? search;
  SearchModel({
    this.id,
    this.search,
  });
  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
    id: json['id'],
    search: json['search'],
  );
}