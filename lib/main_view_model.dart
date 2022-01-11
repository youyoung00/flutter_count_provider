import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  int counter = 0;
  String title = 'Flutter Demo Home Page';
  String bodyTxt = 'You have pushed the button this many times:';
  String toolTip = 'Increment';

  void increment() {
    // 상태 바꾸고

    counter++;

    notifyListeners();
  }
}
