// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_questions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Questions _$QuestionsFromJson(Map<String, dynamic> json) => Questions(
      question: (json['questions'] as List<dynamic>)
          .map((e) => FaqQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );



FaqQuestionModel _$FaqQuestionModelFromJson(Map<String, dynamic> json) =>
    FaqQuestionModel(
      id: (json['id'] as num).toInt(),
      question: json['question'] as String,
      answer: json['answer'] as String,
    );


