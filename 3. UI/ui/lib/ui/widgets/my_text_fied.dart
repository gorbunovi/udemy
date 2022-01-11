import 'package:flutter/material.dart';

Widget myTextField(){
  return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
          prefixIcon: Icon (Icons.search, color:  Colors.white,),
          border: InputBorder.none,
          labelText: "Enter City Name",
          labelStyle: TextStyle(color: Colors.white, fontSize: 14),
          fillColor: Colors.red,
          filled: true
      )
  );
}