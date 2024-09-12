import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: "user")
  final User user;
  final String? token;

  UserModel(this.user, this.token);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@JsonSerializable()
class User {
  final int id;
  final String firstName;
  final String? lastName;
  final String email;
  final String phone;
  final int credit;
  final int points;
  final bool isAdmin;
  final String image;
  final bool isApproved;

  User(
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.credit,
    this.points,
    this.isAdmin,
    this.image,
    this.isApproved,
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
