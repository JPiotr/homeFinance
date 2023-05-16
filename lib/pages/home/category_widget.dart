import 'package:finance_app/pages/home/category.dart';
import 'package:flutter/material.dart';

class CategoryWidget {
  final Category _category;

  CategoryWidget(this._category);

  Widget _getTitle() {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(_category.title,
            style: const TextStyle(fontSize: 25, letterSpacing: 2)));
  }

  Widget _getDescription() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          _category.description,
          style: const TextStyle(fontSize: 15),
          textAlign: TextAlign.left,
        ));
  }

  Widget getWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("$_category clicked");
        Navigator.pushNamed(context, _category.route);
      },
      child: Container(
        height: 250,
        child: Card(
          borderOnForeground: true,
          margin: const EdgeInsets.all(5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(children: [
            _getTitle(),
            const Divider(color: Colors.black),
            Row(
              children: [_getDescription()],
            )
          ]),
        ),
      ),
    );
  }
}
