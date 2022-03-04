import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//複数同じだと一箇所を変えるだけでいいからこうしてる
//https://dribbble.com/shots/4585382-Simple-BMI-Calculator

const kBottomContainerheight = 50.0;
const kActiveCardColor = Color(0xFF1E1F32);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1455);

const TextStyle kLabelTextStyle =
    TextStyle(fontSize: 20, color: Color(0xFF8D8E98));

const TextStyle kNumberTextStyle =
    TextStyle(fontSize: 40, fontWeight: FontWeight.w700);

const kIconMinus = Icon(
  FontAwesomeIcons.minus,
  color: Colors.white,
);
const kIconPlus= Icon(
  FontAwesomeIcons.plus,
   color: Colors.white,
);
