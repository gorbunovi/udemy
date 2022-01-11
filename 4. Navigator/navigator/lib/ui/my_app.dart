import 'package:flutter/material.dart';
import 'package:navigator/data/classes/user_class.dart';
import 'pages/my_home_page.dart';
import 'pages/second_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: (settings){
        switch (settings.name){
          case '/':
            return MaterialPageRoute(builder: (context) => MyHomePage(title: 'Flutter Demo'));
          case '/second':
            User user = settings.arguments as User;
            return MaterialPageRoute(builder: (context) => SecondPage(user: user));
        }
      },
    );
  }
}