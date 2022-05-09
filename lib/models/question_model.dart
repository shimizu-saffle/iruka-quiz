// import 'package:equatable/equatable.dart';

// class OldQuestion extends Equatable {
//   const OldQuestion({
//     required this.category,
//     required this.difficulty,
//     required this.question,
//     required this.correctAnswer,
//     required this.answers,
//   });

//   final String category;
//   final String difficulty;
//   final String question;
//   final String correctAnswer;
//   final List<String> answers;

//   @override
//   List<Object> get props => [
//         category,
//         difficulty,
//         question,
//         correctAnswer,
//         answers,
//       ];

//   factory OldQuestion.fromMap(Map<String, dynamic> map) {
//     return OldQuestion(
//       category: map['category'] ?? '',
//       difficulty: map['difficulty'] ?? '',
//       question: map['question'] ?? '',
//       correctAnswer: map['correct_answer'] ?? '',
//       answers: List<String>.from(map['incorrect_answers'] ?? [])
//         ..add(map['correct_answer'] ?? '')
//         ..shuffle(),
//     );
//   }
// }
