import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/question/question.dart';

part 'quiz_state.freezed.dart';

enum QuizStatus { initial, selecting, correct, incorrect, complete }

@freezed
class QuizState with _$QuizState {
  const QuizState._();
  factory QuizState({
    @Default('') String selectedAnswer,
    @Default([]) List<Question> correct,
    @Default([]) List<Question> incorrect,
    @Default(QuizStatus.initial) QuizStatus status,
  }) = _QuizState;

  bool get answered =>
      status == QuizStatus.selecting ||
      status == QuizStatus.incorrect ||
      status == QuizStatus.correct;
}
