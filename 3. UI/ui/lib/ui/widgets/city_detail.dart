

import 'package:flutter/material.dart';

Widget cityDetail(){
  return Center(
    child: Container(
      child: Column(
        children: <Widget>[
          Text(
            'Murmansk Oblast, RU',
            style: TextStyle(
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'Ynvar, 08, 2022',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w300
            ),
          ),
        ],
      ),
    ),
  );
}
