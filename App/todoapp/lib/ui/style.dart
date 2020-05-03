import 'package:flutter/material.dart';

class Style {
  static Color darkGreyColor = new Color(0xFF212128);
  static Color lightBlueColor = new Color(0xFF8787A0);
  static Color redColor = new Color(0xFFDC4F64);

  static TextStyle intrayTitleStyle = TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      color: darkGreyColor,
      fontSize: 50);

  static TextStyle bigLightBlueTitle = TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      color: lightBlueColor,
      fontSize: 50);

  static TextStyle darkTodoTitle = TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      color: darkGreyColor,
      fontSize: 30);

  static TextStyle whiteTitle = TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 20);

  static TextStyle whiteButtonTitle = TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 15);

  static TextStyle redTodoTitle = TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      color: redColor,
      fontSize: 30);

  static TextStyle redBoldText = TextStyle(
      fontFamily: 'Avenir',
      fontWeight: FontWeight.bold,
      color: redColor,
      fontSize: 20);

  static TextStyle redText =
      TextStyle(fontFamily: 'Avenir', color: redColor, fontSize: 20);
}
