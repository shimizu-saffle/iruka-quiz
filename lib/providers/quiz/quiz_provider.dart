import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../enums/difficulty.dart';
import '../../models/question/question.dart';
import '../../repositories/quiz/quiz_repository.dart';
import 'quiz_state.dart';

final quizQuestionsProvider = FutureProvider.autoDispose<List<Question>>(
  (ref) => ref.watch(quizRepositoryProvider).getQuestions(
        numQuestions: 5,
        categoryId: Random().nextInt(24) + 9,
        difficulty: Difficulty.any,
      ),
);

final quizStateNotifierProvider =
    StateNotifierProvider.autoDispose<QuizStateNotifier, QuizState>(
  (_) => QuizStateNotifier(),
);

class QuizStateNotifier extends StateNotifier<QuizState> {
  QuizStateNotifier() : super(QuizState());

  void selectAnswer(Question currentQuestion, String answer) =>
      state = state.copyWith(
        selectedAnswer: answer,
        currentSelectedQuestion: currentQuestion,
        status: QuizStatus.selecting,
      );

  void submitAnswer() {
    if (state.currentSelectedQuestion!.correctAnswer == state.selectedAnswer) {
      state = state.copyWith(
        selectedAnswer: state.selectedAnswer,
        correct: [...state.correct, state.currentSelectedQuestion!],
        status: QuizStatus.correct,
      );
    } else {
      state = state.copyWith(
        selectedAnswer: state.selectedAnswer,
        incorrect: [...state.incorrect, state.currentSelectedQuestion!],
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
    state = QuizState();
  }
}
