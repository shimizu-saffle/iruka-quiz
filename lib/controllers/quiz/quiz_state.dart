import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../models/question_model.dart';

enum QuizStatus { initial, correct, incorrect, complete }

@immutable
class QuizState extends Equatable {
  const QuizState({
    required this.selectedAnswer,
    required this.correct,
    required this.incorrect,
    required this.status,
  });

  final String selectedAnswer;
  final List<OldQuestion> correct;
  final List<OldQuestion> incorrect;
  final QuizStatus status;

  factory QuizState.initial() {
    return const QuizState(
      selectedAnswer: '',
      correct: [],
      incorrect: [],
      status: QuizStatus.initial,
    );
  }

  bool get answered =>
      status == QuizStatus.incorrect || status == QuizStatus.correct;

  @override
  List<Object> get props => [
        selectedAnswer,
        correct,
        incorrect,
        status,
      ];

  QuizState copyWith({
    String? selectedAnswer,
    List<OldQuestion>? correct,
    List<OldQuestion>? incorrect,
    QuizStatus? status,
  }) {
    return QuizState(
      selectedAnswer: selectedAnswer ?? this.selectedAnswer,
      correct: correct ?? this.correct,
      incorrect: incorrect ?? this.incorrect,
      status: status ?? this.status,
    );
  }
}
