import 'package:json_annotation/json_annotation.dart';
part 'faq_questions_model.g.dart';

@JsonSerializable()
class Questions {
  @JsonKey(name: 'questions')
  final List<FaqQuestionModel> question;
  Questions({required this.question});

  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);
}

@JsonSerializable()
class FaqQuestionModel {
  final int id;
  final String question;
  final String answer;

  FaqQuestionModel({
    required this.id,
    required this.question,
    required this.answer,
  });
  factory FaqQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$FaqQuestionModelFromJson(json);
}
