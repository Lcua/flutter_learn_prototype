import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Color.fromRGBO(85, 45, 0, 1.0),
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
  fillColor: Color.fromRGBO(255, 255, 255, 0.5),
  filled: true,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color.fromRGBO(85, 45, 0, 1.0), width: 2.0),
  ),
);
