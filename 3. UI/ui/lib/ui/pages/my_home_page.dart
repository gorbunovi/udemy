import 'package:flutter/material.dart';
import 'package:ui/ui/widgets/bottom_detail.dart';
import 'package:ui/ui/widgets/city_detail.dart';
import 'package:ui/ui/widgets/extra_weather_detail.dart';
import 'package:ui/ui/widgets/my_text_fied.dart';
import 'package:ui/ui/widgets/temperature_detal.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  static const routeName = 'MyHomePage';
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(widget.title, style: TextStyle(fontSize: 17),),
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.red,
        child:  SafeArea(
          child: Center(
            child:  Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      myTextField(),
                      SizedBox(),
                      cityDetail(),
                      SizedBox(height: 10),
                      temperatureDetal(),
                      SizedBox(height: 10),
                      extraWeatherDetail(),
                      SizedBox(height: 20),
                      Text('7-DAY WEATHER FORECAST',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  )
                ),
                Expanded(
                  flex: 1,
                  child: myListView(),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}


