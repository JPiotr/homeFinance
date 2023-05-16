import 'package:finance_app/pages/recipt/index.dart';
import 'package:flutter/material.dart';

class ReciptElement {
  late ReciptModel model;

  ReciptElement(this.model);

  Widget getWidget() {
    return Container(
      height: 50,
      color: Colors.amber,
      child: Center(
          child: Text(
              'Entry ${model.id}, ${model.name}, ${model.value}, ${model.dateTime}')),
    );
  }
}
