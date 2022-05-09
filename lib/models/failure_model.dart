import 'package:equatable/equatable.dart';

class OldFailure extends Equatable {
  final String message;

  const OldFailure({this.message = ''});

  @override
  List<Object> get props => [message];
}
