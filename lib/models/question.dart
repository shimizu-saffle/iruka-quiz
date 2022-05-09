import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  factory Question({
    required String category,
    required String difficulty,
    required String question,
    @JsonKey(name: 'correct_answer') required String correctAnswer,
    @JsonKey(name: 'incorrect_answers') required List<String> answers,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
