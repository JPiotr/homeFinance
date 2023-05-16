import 'package:flutter/material.dart';
import 'package:finance_app/pages/recipt/index.dart';

class ReciptPage extends StatefulWidget {
  static const String routeName = '/recipt';

  @override
  _ReciptPageState createState() => _ReciptPageState();
}

class _ReciptPageState extends State<ReciptPage> {
  final _reciptBloc = ReciptBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rachunki'),
      ),
      body: ReciptScreen(reciptBloc: _reciptBloc),
    );
  }
}
