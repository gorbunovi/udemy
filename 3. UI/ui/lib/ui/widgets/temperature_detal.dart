import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget temperatureDetal(){
  return Center(
    child: Container(
      alignment: Alignment.center,
      width: 200,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.wb_sunny,
                size: 50,
                color: Colors.white,
              ),
              Column(
                children: [
                  Text(
                    '14 °F',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                        fontWeight: FontWeight.w200
                    ),
                  ),
                  Text(
                    'LIGHT SNOW',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}