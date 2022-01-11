import 'package:flutter/material.dart';
import 'package:ui/ui/pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onUnknownRoute:(RouteSettings settings){
        return MaterialPageRoute(builder: (BuildContext context){
          return MyHomePage(title: "Weather Forecast");
        });
      } ,
      onGenerateRoute:(RouteSettings settings) {
        switch(settings.name) {
          case MyHomePage.routeName:
            return MaterialPageRoute(builder: (BuildContext context) {
              return MyHomePage(title: "Weather Forecast");
            }
          );
        }
      }
    );
  }
}

