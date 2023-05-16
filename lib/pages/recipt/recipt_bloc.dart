import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:finance_app/pages/recipt/index.dart';

class ReciptBloc extends Bloc<ReciptEvent, ReciptState> {
  // todo: check singleton for logic in project
  // use GetIt for DI in projct
  static final ReciptBloc _reciptBlocSingleton = ReciptBloc._internal();
  factory ReciptBloc() {
    return _reciptBlocSingleton;
  }

  ReciptBloc._internal() : super(UnReciptState(0)) {
    on<ReciptEvent>((event, emit) {
      return emit.forEach<ReciptState>(
        event.applyAsync(currentState: state, bloc: this),
        onData: (state) => state,
        onError: (error, stackTrace) {
          developer.log('$error',
              name: 'ReciptBloc', error: error, stackTrace: stackTrace);
          return ErrorReciptState(0, error.toString());
        },
      );
    });
  }

  @override
  Future<void> close() async {
    // dispose objects
    await super.close();
  }

  @override
  ReciptState get initialState => UnReciptState(0);
}
