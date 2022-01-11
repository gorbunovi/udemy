import 'package:flutter/material.dart';

Widget extraWeatherDetail(){
  return Center(
    child: Container(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            Icon(Icons.ac_unit, color: Colors.white,),
            Text('5', style: TextStyle(color: Colors.white, fontSize: 19),),
            Text('km/hr', style: TextStyle(color: Colors.white, ),),
            ]
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.ac_unit, color: Colors.white,),
                Text('3', style: TextStyle(color: Colors.white, fontSize: 19),),
                Text('%', style: TextStyle(color: Colors.white, ),),
              ]
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.ac_unit, color: Colors.white,),
                Text('20', style: TextStyle(color: Colors.white, fontSize: 19),),
                Text('%', style: TextStyle(color: Colors.white, ),),
              ]
          )
        ],
      ),
    ),
  );
}