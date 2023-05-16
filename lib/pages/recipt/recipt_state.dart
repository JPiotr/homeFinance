import 'package:equatable/equatable.dart';

abstract class ReciptState extends Equatable {
  ReciptState(this.version);

  /// notify change state without deep clone state
  final int version;

  /// Copy object for use in action
  /// if need use deep clone
  ReciptState getStateCopy();

  ReciptState getNewVersion();

  @override
  List<Object> get props => [version];
}

/// UnInitialized
class UnReciptState extends ReciptState {
  UnReciptState(int version) : super(version);

  @override
  String toString() => 'UnReciptState';

  @override
  UnReciptState getStateCopy() {
    return UnReciptState(0);
  }

  @override
  UnReciptState getNewVersion() {
    return UnReciptState(version + 1);
  }
}

/// Initialized
class InReciptState extends ReciptState {
  InReciptState(int version) : super(version);

  // final String hello;

  @override
  String toString() => 'InReciptState';

  @override
  InReciptState getStateCopy() {
    return InReciptState(version);
  }

  @override
  InReciptState getNewVersion() {
    return InReciptState(version + 1);
  }

  @override
  List<Object> get props => [version];
}

class ErrorReciptState extends ReciptState {
  ErrorReciptState(int version, this.errorMessage) : super(version);

  final String errorMessage;

  @override
  String toString() => 'ErrorReciptState';

  @override
  ErrorReciptState getStateCopy() {
    return ErrorReciptState(version, errorMessage);
  }

  @override
  ErrorReciptState getNewVersion() {
    return ErrorReciptState(version + 1, errorMessage);
  }

  @override
  List<Object> get props => [version, errorMessage];
}
