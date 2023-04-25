import 'package:flutter/material.dart';

class Score extends ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }

  void reset() {
    _value = 0;
    notifyListeners();
  }
}
