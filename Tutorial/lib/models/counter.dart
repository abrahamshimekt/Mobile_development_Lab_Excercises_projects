import 'package:flutter/material.dart';
class CounterModel with ChangeNotifier{
  int _index =0;
  void onItemTapped(int index){
    _index = index;
    notifyListeners();
  }
  int get currentCount => _index;

}