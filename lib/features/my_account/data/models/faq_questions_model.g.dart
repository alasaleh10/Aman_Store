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

Map<String, dynamic> _$QuestionsToJson(Questions instance) => <String, dynamic>{
      'questions': instance.question,
    };

FaqQuestionModel _$FaqQuestionModelFromJson(Map<String, dynamic> json) =>
    FaqQuestionModel(
      id: (json['id'] as num).toInt(),
      question: json['question'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$FaqQuestionModelToJson(FaqQuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
    };
