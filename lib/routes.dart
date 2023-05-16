import 'package:finance_app/pages/recipt/recipt_page.dart';
import 'package:flutter/material.dart';

import 'Pages/Home/Home_page.dart';

class RoutesManager {
  static Map<String, Widget Function(BuildContext)> globalRoutes = {
    '/home': (context) => HomePage(),
    '/recipt': (context) => ReciptPage()
  };

  static String getInitial() {
    return globalRoutes.entries.first.key;
  }
}
