import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/failure/failure.dart';
import '../models/question/question.dart';
import '../providers/quiz/quiz_provider.dart';
import '../providers/quiz/quiz_state.dart';
import '../widgets/custom_button.dart';
import '../widgets/quiz_error.dart';
import '../widgets/quiz_questions.dart';
import '../widgets/quiz_results.dart';

class QuizPage extends HookConsumerWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizQuestions = ref.watch(quizQuestionsProvider);
    final pageController = usePageController();
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFD4418E), Color(0xFF0652C5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: quizQuestions.when(
          data: (questions) =>
              _buildBody(context, ref, pageController, questions),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => QuizError(
            widgetRef: ref,
            message: error is Failure ? error.message : 'Something went wrong!',
          ),
        ),
        bottomSheet: quizQuestions.maybeWhen(
          data: (questions) {
            final quizState = ref.watch(quizStateNotifierProvider);
            if (!quizState.answered) return const SizedBox.shrink();
            return CustomButton(
              title: pageController.page!.toInt() + 1 < questions.length
                  ? 'Next Question'
                  : 'See Results',
              onTap: () {
                ref
                    .read(quizStateNotifierProvider.notifier)
                    .nextQuestion(questions, pageController.page!.toInt());
                if (pageController.page!.toInt() + 1 < questions.length) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.linear,
                  );
                }
              },
            );
          },
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    PageController pageController,
    List<Question> questions,
  ) {
    if (questions.isEmpty) {
      return QuizError(
        widgetRef: ref,
        message: 'クイズをうまく取得できませんでした🥹',
      );
    }
    final quizState = ref.watch(quizStateNotifierProvider);
    return quizState.status == QuizStatus.complete
        ? QuizResults(
            state: quizState,
            widgetRef: ref,
            questions: questions,
          )
        : QuizQuestions(
            pageController: pageController,
            state: quizState,
            questions: questions,
            widgetRef: ref,
          );
  }
}
