import 'dart:ffi';

import 'package:finance_app/pages/recipt/recipt_elem_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:finance_app/pages/recipt/index.dart';

class ReciptScreen extends StatefulWidget {
  const ReciptScreen({
    required ReciptBloc reciptBloc,
    Key? key,
  })  : _reciptBloc = reciptBloc,
        super(key: key);

  final ReciptBloc _reciptBloc;

  @override
  ReciptScreenState createState() {
    return ReciptScreenState();
  }
}

class ReciptScreenState extends State<ReciptScreen> {
  ReciptScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReciptBloc, ReciptState>(
        bloc: widget._reciptBloc,
        builder: (
          BuildContext context,
          ReciptState currentState,
        ) {
          if (currentState is UnReciptState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorReciptState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentState.errorMessage),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: Text('reload'),
                    onPressed: _load,
                  ),
                ),
              ],
            ));
          }
          if (currentState is InReciptState) {
            final List<ReciptModel> list = List.from({
              ReciptModel(0, "test", 1.0, DateTime.now()),
              ReciptModel(1, "test", 22.0, DateTime.now())
            });
            var elements = list.map((e) => ReciptElement(e));
            return SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [for (var obj in elements) obj.getWidget()]),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  void _load([bool isError = false]) {
    widget._reciptBloc.add(LoadReciptEvent(isError));
  }
}
