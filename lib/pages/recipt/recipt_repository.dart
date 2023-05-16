import 'package:finance_app/pages/recipt/index.dart';

class ReciptRepository {
  final ReciptProvider _reciptProvider = ReciptProvider();

  ReciptRepository();

  void test(bool isError) {
    _reciptProvider.test(isError);
  }
}