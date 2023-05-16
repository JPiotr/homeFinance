import 'dart:math';

import 'package:finance_app/pages/recipt/index.dart';
import 'package:flutter/material.dart';

class ReciptElement {
  late ReciptModel model;

  ReciptElement(this.model);

  Widget getWidget() {
    return ListTile(
        // height: 50,
        // color: Colors.amber,
        title: Container(
      height: 50,
      child: Card(
        borderOnForeground: true,
        margin: const EdgeInsets.all(2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(model.name),
              Text(
                  '${model.dateTime.day}.${model.dateTime.month}.${model.dateTime.year}')
            ],
          ),
        )),
      ),
    ));
  }
}
