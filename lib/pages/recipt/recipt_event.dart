import 'dart:async';
import 'dart:developer' as developer;

import 'package:finance_app/pages/recipt/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ReciptEvent {
  Stream<ReciptState> applyAsync({ReciptState currentState, ReciptBloc bloc});
  final ReciptRepository _reciptRepository = ReciptRepository();
}

class UnReciptEvent extends ReciptEvent {
  @override
  Stream<ReciptState> applyAsync(
      {ReciptState? currentState, ReciptBloc? bloc}) async* {
    yield UnReciptState(0);
  }
}

class LoadReciptEvent extends ReciptEvent {
  final bool isError;
  @override
  String toString() => 'LoadReciptEvent';

  LoadReciptEvent(this.isError);

  @override
  Stream<ReciptState> applyAsync(
      {ReciptState? currentState, ReciptBloc? bloc}) async* {
    try {
      yield UnReciptState(0);
      await Future.delayed(const Duration(seconds: 1));
      _reciptRepository.test(isError);
      yield InReciptState(0);
    } catch (_, stackTrace) {
      developer.log('$_',
          name: 'LoadReciptEvent', error: _, stackTrace: stackTrace);
      yield ErrorReciptState(0, _.toString());
    }
  }
}
