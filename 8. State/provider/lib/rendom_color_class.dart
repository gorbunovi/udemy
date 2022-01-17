

import 'dart:math';
import 'package:flutter/material.dart';

class RendomColorProvider extends ChangeNotifier{

  List<Color> _colors =[
    Colors.amber,
    Colors.black,
    Colors.lime,
    Colors.deepOrange,
    Colors.purple,
    Colors.green,
    Colors.pink,
    Colors.red,
    Colors.brown,
    Colors.deepPurple,
  ];

  Color _appBarColor = Colors.deepPurple;
  Color _containerColor = Colors.purple;

  Color get appBarColor => _appBarColor;
  Color get containerColor => _containerColor;

  void setRendomColor(){
    _appBarColor = _colors[Random().nextInt(_colors.length)];
    _containerColor = _colors[ Random().nextInt(_colors.length)];
    notifyListeners();
  }
}