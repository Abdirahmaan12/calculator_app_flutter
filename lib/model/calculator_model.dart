import 'package:flutter/material.dart';
import 'package:flutterdesign/constants/constants.dart';

class Calculator {
  static const buttonlist = buttons;
  final Buttons buttonData;

  Calculator(this.buttonData);

  String get title {
    switch (buttonData) {
      case Buttons.num0:
        return '0';
        break;
      case Buttons.num1:
        return '1';
        break;
      case Buttons.num2:
        return '2';
        break;
      case Buttons.num3:
        return '3';
        break;
      case Buttons.num4:
        return '4';
        break;
      case Buttons.num5:
        return '5';
        break;
      case Buttons.num6:
        return '6';
        break;
      case Buttons.num7:
        return '7';
        break;
      case Buttons.num8:
        return '8';
        break;
      case Buttons.num9:
        return '9';
        break;
      case Buttons.AC:
        return 'AC';
        break;
      case Buttons.plusMinus:
        return '+/-';
        break;
      case Buttons.mod:
        return '%';
        break;
      case Buttons.devide:
        return '/';
        break;
      case Buttons.multipy:
        return 'X';
        break;
      case Buttons.minus:
        return '-';
        break;
      case Buttons.add:
        return '+';
        break;
      case Buttons.equal:
        return '=';
        break;
      case Buttons.dot:
        return '.';
        break;
      default:
        return '';
    }
  }

  Color get backGroundColor {
    switch (buttonData) {
      case Buttons.AC:
      case Buttons.mod:
      case Buttons.plusMinus:
        return Colors.grey.shade400;
        break;
      case Buttons.add:
      case Buttons.minus:
      case Buttons.multipy:
      case Buttons.devide:
      case Buttons.equal:
        return Colors.amber.shade800;
        break;
      default:
        return Colors.grey.shade900;
    }
  }

  Color get textbackGroundColor {
    switch (buttonData) {
      case Buttons.AC:
      case Buttons.mod:
      case Buttons.plusMinus:
        return Colors.black;
        break;

      default:
        return Colors.white;
    }
  }

  String get numbers {
    switch (buttonData) {
      case Buttons.num0:
        return '0';
        break;
      case Buttons.num1:
        return '1';
        break;
      case Buttons.num2:
        return '2';
        break;
      case Buttons.num3:
        return '3';
        break;
      case Buttons.num4:
        return '4';
        break;
      case Buttons.num5:
        return '5';
        break;
      case Buttons.num6:
        return '6';
        break;
      case Buttons.num7:
        return '7';
        break;
      case Buttons.num8:
        return '8';
        break;
      case Buttons.num9:
        return '9';
        break;
      case Buttons.dot:
        return '.';
        break;
      default:
        return '';
    }
  }
}
