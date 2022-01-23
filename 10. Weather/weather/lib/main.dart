import 'package:flutter/material.dart';
import 'package:weather/screens/location_screen.dart';
import 'package:weather/screens/weather_forecast_screen.dart';



  // API Keys - 1369dd6b5ae78fc9952261ab9aa236b4
  // url - http://api.openweathermap.org/data/2.5/forecast/daily?lat=35&lon=139&appid=1369dd6b5ae78fc9952261ab9aa236b4&units=metric
  //       http://api.openweathermap.org/data/2.5/forecast/daily?&q=London&appid=1369dd6b5ae78fc9952261ab9aa236b4&units=metric

  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
    @override
      Widget build(BuildContext context) {
      return MaterialApp(
      home: LocationScreen(),
      );
    }
  }
