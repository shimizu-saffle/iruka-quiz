// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  String get category => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get correctAnswer => throw _privateConstructorUsedError;
  List<String> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {String category,
      String difficulty,
      String question,
      String correctAnswer,
      List<String> answers});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? difficulty = freezed,
    Object? question = freezed,
    Object? correctAnswer = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: correctAnswer == freezed
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String category,
      String difficulty,
      String question,
      String correctAnswer,
      List<String> answers});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, (v) => _then(v as _$_Question));

  @override
  _$_Question get _value => super._value as _$_Question;

  @override
  $Res call({
    Object? category = freezed,
    Object? difficulty = freezed,
    Object? question = freezed,
    Object? correctAnswer = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$_Question(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: difficulty == freezed
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: correctAnswer == freezed
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  _$_Question(
      {required this.category,
      required this.difficulty,
      required this.question,
      required this.correctAnswer,
      required final List<String> answers})
      : _answers = answers;

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final String category;
  @override
  final String difficulty;
  @override
  final String question;
  @override
  final String correctAnswer;
  final List<String> _answers;
  @override
  List<String> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'Question(category: $category, difficulty: $difficulty, question: $question, correctAnswer: $correctAnswer, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.difficulty, difficulty) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality()
                .equals(other.correctAnswer, correctAnswer) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(difficulty),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(correctAnswer),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(this);
  }
}

abstract class _Question implements Question {
  factory _Question(
      {required final String category,
      required final String difficulty,
      required final String question,
      required final String correctAnswer,
      required final List<String> answers}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get difficulty => throw _privateConstructorUsedError;
  @override
  String get question => throw _privateConstructorUsedError;
  @override
  String get correctAnswer => throw _privateConstructorUsedError;
  @override
  List<String> get answers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
