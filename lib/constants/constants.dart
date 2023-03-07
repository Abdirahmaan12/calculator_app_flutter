import 'package:flutter/material.dart';

enum Buttons {
  num0,
  num1,
  num2,
  num3,
  num4,
  num5,
  num6,
  num7,
  num8,
  num9,
  AC,
  plusMinus,
  mod,
  devide,
  multipy,
  minus,
  add,
  equal,
  dot,
}

const buttons = [
  [
    Buttons.AC,
    Buttons.plusMinus,
    Buttons.mod,
    Buttons.devide,
  ],
  [
    Buttons.num7,
    Buttons.num8,
    Buttons.num9,
    Buttons.multipy,
  ],
  [
    Buttons.num4,
    Buttons.num5,
    Buttons.num6,
    Buttons.minus,
  ],
  [
    Buttons.num1,
    Buttons.num2,
    Buttons.num3,
    Buttons.add,
  ],
  [
    Buttons.num0,
    Buttons.dot,
    Buttons.equal,
  ],
];
