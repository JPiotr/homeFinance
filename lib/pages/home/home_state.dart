import 'package:finance_app/pages/home/category_widget.dart';
import 'package:finance_app/pages/home/category.dart';
import 'package:finance_app/routes.dart';
import 'package:flutter/material.dart';

import 'Home_page.dart';

class HomeState extends State<HomePage> {
  late String title;
  final List<Category> categories = List.of({
    Category("Rachunki", "Wszystkie wprowadzone rachunki do aplikacji",
        RoutesManager.globalRoutes.entries.elementAt(1).key),
    // Category("Podsumowanie", "Podsumowania finansów w zadanym okresie",
    //     RoutesManager.globalRoutes.entries.elementAt(2).key),
    // Category("Kalendarz", "Kalendarz wydatków",
    //     RoutesManager.globalRoutes.entries.elementAt(3).key),
    // Category("Ustawienia", "Ustawienia słowników",
    //     RoutesManager.globalRoutes.entries.elementAt(4).key)
  });

  HomeState(this.title);

  @override
  Widget build(BuildContext context) {
    final categoryWidgets = categories.map((e) => CategoryWidget(e));

    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var widget in categoryWidgets) widget.getWidget(context)
              ],
            ),
          ),
        ));
  }
}
