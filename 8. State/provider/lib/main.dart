import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_provider/rendom_color_class.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<RendomColorProvider>.value(value: RendomColorProvider()),
      ],
      child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    RendomColorProvider _rendomColor = Provider.of<RendomColorProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: _rendomColor.appBarColor,),
        ) //
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: 200,
              width: 200,
              color: _rendomColor.containerColor
            ),
            Switch(value: _isSwitched, onChanged: (value){
                  _isSwitched = !_isSwitched;
                  _rendomColor.setRendomColor();
            })
          ],
        ),
      ),
    );
  }
}
