import 'package:flutter/material.dart';


Widget myListView(){
  List deys = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  List temperatures = [
    '-10',
    '-15',
    '-12',
    '-9',
    '-6',
    '-10',
    '-7'
  ];
  return ListView.builder(
    itemExtent: 120,
    scrollDirection: Axis.horizontal,
    itemCount: deys.length,
    itemBuilder: (BuildContext context, index){
      return _container(deys[index], temperatures[index]);
    },
  );
}


Widget _container(String dey, String temperature){
  return Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(left: 5, right: 5),
    height: 50,
    width: 80,
    color: Colors.white30,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          '$dey',
          style:  TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w300
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$temperature',
              style:  TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Text(
              '°F',
              style:  TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Icon(
              Icons.wb_sunny,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ],
    ),
  );
}