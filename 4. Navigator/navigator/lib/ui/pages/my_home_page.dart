



import 'package:flutter/material.dart';
import 'package:navigator/data/classes/user_class.dart';
import 'package:navigator/ui/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _text = 'Text';
  _goToSecondPage() async {
      Route route = MaterialPageRoute(builder: (context) => SecondPage(user: User(age: 10,name: 'vasy')));
      final resault = await Navigator.push(context, route);

      setState(() {
        _text = resault;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_text'),
            RaisedButton(
              child: Text('Second'),
              onPressed: (){
                _goToSecondPage();
              },
            ),
          ],
        )

      ),
    );
  }
}