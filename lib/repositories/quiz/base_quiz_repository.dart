import '../../enums/difficulty.dart';
import '../../models/question_model.dart';

abstract class BaseQuizRepository {
  Future<List<OldQuestion>> getQuestions({
    required int numQuestions,
    required int categoryId,
    required Difficulty difficulty,
  });
}
