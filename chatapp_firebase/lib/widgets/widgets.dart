import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w300),
  focusedBorder: OutlineInputBorder(
    //when user clicked (focused) this code enab
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
    borderSide: BorderSide(color: Color(0xFFee7b64), width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
    borderSide: BorderSide(color: Color(0xFFee7b64), width: 2),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
    borderSide: BorderSide(color: Color(0xFFee7b64), width: 2),
  ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenPop(context, page) {
  Navigator.pop(context, MaterialPageRoute(builder: (context) => page));
}
