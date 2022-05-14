// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quiz_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizState {
  String get selectedAnswer => throw _privateConstructorUsedError;
  List<Question> get correct => throw _privateConstructorUsedError;
  List<Question> get incorrect => throw _privateConstructorUsedError;
  QuizStatus get status => throw _privateConstructorUsedError;
  Question? get currentSelectedQuestion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res>;
  $Res call(
      {String selectedAnswer,
      List<Question> correct,
      List<Question> incorrect,
      QuizStatus status,
      Question? currentSelectedQuestion});

  $QuestionCopyWith<$Res>? get currentSelectedQuestion;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res> implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  final QuizState _value;
  // ignore: unused_field
  final $Res Function(QuizState) _then;

  @override
  $Res call({
    Object? selectedAnswer = freezed,
    Object? correct = freezed,
    Object? incorrect = freezed,
    Object? status = freezed,
    Object? currentSelectedQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      correct: correct == freezed
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      incorrect: incorrect == freezed
          ? _value.incorrect
          : incorrect // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
      currentSelectedQuestion: currentSelectedQuestion == freezed
          ? _value.currentSelectedQuestion
          : currentSelectedQuestion // ignore: cast_nullable_to_non_nullable
              as Question?,
    ));
  }

  @override
  $QuestionCopyWith<$Res>? get currentSelectedQuestion {
    if (_value.currentSelectedQuestion == null) {
      return null;
    }

    return $QuestionCopyWith<$Res>(_value.currentSelectedQuestion!, (value) {
      return _then(_value.copyWith(currentSelectedQuestion: value));
    });
  }
}

/// @nodoc
abstract class _$$_QuizStateCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$$_QuizStateCopyWith(
          _$_QuizState value, $Res Function(_$_QuizState) then) =
      __$$_QuizStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String selectedAnswer,
      List<Question> correct,
      List<Question> incorrect,
      QuizStatus status,
      Question? currentSelectedQuestion});

  @override
  $QuestionCopyWith<$Res>? get currentSelectedQuestion;
}

/// @nodoc
class __$$_QuizStateCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$$_QuizStateCopyWith<$Res> {
  __$$_QuizStateCopyWithImpl(
      _$_QuizState _value, $Res Function(_$_QuizState) _then)
      : super(_value, (v) => _then(v as _$_QuizState));

  @override
  _$_QuizState get _value => super._value as _$_QuizState;

  @override
  $Res call({
    Object? selectedAnswer = freezed,
    Object? correct = freezed,
    Object? incorrect = freezed,
    Object? status = freezed,
    Object? currentSelectedQuestion = freezed,
  }) {
    return _then(_$_QuizState(
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      correct: correct == freezed
          ? _value._correct
          : correct // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      incorrect: incorrect == freezed
          ? _value._incorrect
          : incorrect // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
      currentSelectedQuestion: currentSelectedQuestion == freezed
          ? _value.currentSelectedQuestion
          : currentSelectedQuestion // ignore: cast_nullable_to_non_nullable
              as Question?,
    ));
  }
}

/// @nodoc

class _$_QuizState extends _QuizState {
  _$_QuizState(
      {this.selectedAnswer = '',
      final List<Question> correct = const [],
      final List<Question> incorrect = const [],
      this.status = QuizStatus.initial,
      this.currentSelectedQuestion})
      : _correct = correct,
        _incorrect = incorrect,
        super._();

  @override
  @JsonKey()
  final String selectedAnswer;
  final List<Question> _correct;
  @override
  @JsonKey()
  List<Question> get correct {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_correct);
  }

  final List<Question> _incorrect;
  @override
  @JsonKey()
  List<Question> get incorrect {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incorrect);
  }

  @override
  @JsonKey()
  final QuizStatus status;
  @override
  final Question? currentSelectedQuestion;

  @override
  String toString() {
    return 'QuizState(selectedAnswer: $selectedAnswer, correct: $correct, incorrect: $incorrect, status: $status, currentSelectedQuestion: $currentSelectedQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizState &&
            const DeepCollectionEquality()
                .equals(other.selectedAnswer, selectedAnswer) &&
            const DeepCollectionEquality().equals(other._correct, _correct) &&
            const DeepCollectionEquality()
                .equals(other._incorrect, _incorrect) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(
                other.currentSelectedQuestion, currentSelectedQuestion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedAnswer),
      const DeepCollectionEquality().hash(_correct),
      const DeepCollectionEquality().hash(_incorrect),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(currentSelectedQuestion));

  @JsonKey(ignore: true)
  @override
  _$$_QuizStateCopyWith<_$_QuizState> get copyWith =>
      __$$_QuizStateCopyWithImpl<_$_QuizState>(this, _$identity);
}

abstract class _QuizState extends QuizState {
  factory _QuizState(
      {final String selectedAnswer,
      final List<Question> correct,
      final List<Question> incorrect,
      final QuizStatus status,
      final Question? currentSelectedQuestion}) = _$_QuizState;
  _QuizState._() : super._();

  @override
  String get selectedAnswer => throw _privateConstructorUsedError;
  @override
  List<Question> get correct => throw _privateConstructorUsedError;
  @override
  List<Question> get incorrect => throw _privateConstructorUsedError;
  @override
  QuizStatus get status => throw _privateConstructorUsedError;
  @override
  Question? get currentSelectedQuestion => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuizStateCopyWith<_$_QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}
