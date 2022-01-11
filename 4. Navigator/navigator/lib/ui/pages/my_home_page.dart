



import 'package:flutter/material.dart';
import 'package:navigator/data/classes/user_class.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  _goToSecondPage(){
      Navigator.pushNamed(context, '/second', arguments: User(age: 10,name: 'vasy'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Second'),
          onPressed: (){
            _goToSecondPage();
          },
        ),
      ),
    );
  }
}