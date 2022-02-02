import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color Line1 = Colors.blue;
const Color Line2 = Colors.black;
const Color Line3 = Colors.red;

TextStyle get titleStyle {
  return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w800,
      color: Colors.black,
      shadows: [
        BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.35),
            offset: const Offset(-3, 3),
            spreadRadius: 0)
      ]);
}

TextStyle get subtitleStyle {
  return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w800,
      color: Colors.black54,
      shadows: [
        BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(-3, 3),
            spreadRadius: 0)
      ]);
}

List<BoxShadow> get shadows {
  return [
    BoxShadow(
        blurRadius: 5,
        color: Colors.black.withOpacity(0.5),
        offset: const Offset(-5, 7),
        spreadRadius: 0)
  ];
}

List<BoxShadow> get lightShadows {
  return [
    BoxShadow(
        blurRadius: 10,
        color: Colors.black.withOpacity(0.3),
        offset: const Offset(-2, 5),
        spreadRadius: 2)
  ];
}
