import 'package:flutter/material.dart';
import 'package:flutterdesign/constants/constants.dart';
import 'package:flutterdesign/screen/calculator_screen.dart';
import 'package:flutterdesign/widget/fab-button.dart';
import 'package:flutterdesign/model/calculator_model.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculator(),
    ),
  );
}
