import 'package:flutter/material.dart';

class BottomViewProvider with ChangeNotifier {
  int _currentPage = 0;
  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  get currentPage {
    return _currentPage;
  }
}
