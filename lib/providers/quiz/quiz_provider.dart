import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/question/question.dart';
import 'old_quiz_state.dart';

final quizStateNotifierProvider =
    StateNotifierProvider.autoDispose<QuizStateNotifier, OldQuizState>(
  (_) => QuizStateNotifier(),
);

class QuizStateNotifier extends StateNotifier<OldQuizState> {
  QuizStateNotifier() : super(OldQuizState.initial());

  void submitAnswer(Question currentQuestion, String answer) {
    if (state.answered) return;
    if (currentQuestion.correctAnswer == answer) {
      state = state.copyWith(
        selectedAnswer: answer,
        correct: [...state.correct, currentQuestion],
        status: QuizStatus.correct,
      );
    } else {
      state = state.copyWith(
        selectedAnswer: answer,
        incorrect: [...state.incorrect, currentQuestion],
        status: QuizStatus.incorrect,
      );
    }
  }

  void nextQuestion(List<Question> questions, int currentIndex) {
    state = state.copyWith(
      selectedAnswer: '',
      status: currentIndex + 1 < questions.length
          ? QuizStatus.initial
          : QuizStatus.complete,
    );
  }

  void reset() {
    state = OldQuizState.initial();
  }
}
