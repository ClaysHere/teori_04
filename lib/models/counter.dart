import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  String nama = "Fikri";
  int value = 100;

  void increase() {
    value += 1;
    notifyListeners();
  }

  void decrase() {
    value -= 1;
    notifyListeners();
  }
}
