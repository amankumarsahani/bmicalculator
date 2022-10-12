import 'package:flutter/material.dart';

const smTextLable = TextStyle(
    color: Color(0xFF8D8E98), fontSize: 15.0, fontWeight: FontWeight.w900);
const textLable = TextStyle(
    color: Color(0xFF8D8E98), fontSize: 20.0, fontWeight: FontWeight.w900);
const mdTextLable = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
const lgTextLable = TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold);
const xlTextLable = TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold);

const varmdTextLable = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Color.fromRGBO(56, 142, 60, 1),
);
const varxlTextLable = TextStyle(
    fontSize: 65.0, fontWeight: FontWeight.bold, color: Color(0xFF8D8E98));
const vartextLable =
    TextStyle(color: Colors.red, fontSize: 15.0, fontWeight: FontWeight.w900);

const active = Color(0xFF1D1E33);
const inactive = Color(0xFF111328);

enum genderType { male, female }

Widget hr = SizedBox(height: 10.0);
Widget vw = SizedBox(width: 10.0);
int height = 180;
int age = 0;
int weight = 10;
var selectedGender;
Color maleColorCard = inactive;
Color femaleColorCard = inactive;
