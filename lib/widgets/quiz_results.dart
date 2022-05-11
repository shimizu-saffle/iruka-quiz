import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/question/question.dart';
import '../providers/quiz/quiz_provider.dart';
import '../providers/quiz/quiz_state.dart';
import '../repositories/quiz/quiz_repository.dart';
import 'custom_button.dart';

class QuizResults extends StatelessWidget {
  const QuizResults({
    Key? key,
    required this.state,
    required this.questions,
    required this.widgetRef,
  }) : super(key: key);

  final QuizState state;
  final List<Question> questions;
  final WidgetRef widgetRef;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          '${state.correct.length} / ${questions.length}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 60.0,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        const Text(
          'CORRECT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 40.0),
        CustomButton(
          title: '全問正解に再挑戦する🥹',
          onTap: () {
            widgetRef.refresh(quizRepositoryProvider);
            widgetRef.read(quizStateNotifierProvider.notifier).reset();
          },
        ),
      ],
    );
  }
}
