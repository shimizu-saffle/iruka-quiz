import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repositories/quiz/quiz_repository.dart';
import 'custom_button.dart';

class QuizError extends StatelessWidget {
  const QuizError({
    Key? key,
    required this.message,
    required this.widgetRef,
  }) : super(key: key);

  final String message;
  final WidgetRef widgetRef;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 20.0),
          CustomButton(
            title: 'Retry',
            onTap: () => widgetRef.refresh(quizRepositoryProvider),
          ),
        ],
      ),
    );
  }
}
