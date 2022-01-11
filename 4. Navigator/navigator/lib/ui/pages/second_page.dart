
import 'package:flutter/material.dart';
import 'package:navigator/data/classes/user_class.dart';



class SecondPage extends StatelessWidget {
  final User user;

  SecondPage({required this.user});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${this.user?.name} - ${this.user?.age}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}