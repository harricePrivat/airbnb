import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier {
  int currentIndex = 0;

  void changeIndex(int currentIndex) {
    this.currentIndex = currentIndex;
    notifyListeners();
  }
}
