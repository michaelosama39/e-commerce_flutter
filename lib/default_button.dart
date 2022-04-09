import 'package:flutter/material.dart';

Widget DefaultButton(String text , int fontSize , Function press){
  return SizedBox(
    width: double.infinity,
    height: 56,
    child: FlatButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      color: Color(0xFFFF7643),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: () async{
        press();
      },
    ),
  );
}