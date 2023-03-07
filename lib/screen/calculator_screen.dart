import 'package:flutter/material.dart';
import 'package:flutterdesign/constants/constants.dart';
import 'package:flutterdesign/widget/fab-button.dart';
import 'package:flutterdesign/model/calculator_model.dart';

class calculator extends StatefulWidget {
  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String result = '';
  late double number1 = 0;
  late double number2 = 0;
  bool isAdd = false;
  bool ismultiply = false;
  bool isDevide = false;
  bool issubtract = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        title: Center(
          child: Text(
            'Calculator',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  result,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ...Calculator.buttonlist.map((row) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ...row.map(
                      (button) {
                        final calc = Calculator(button);

                        return FabButton(
                          onPress: () {
                            setState(() {
                              updateUi(button);
                            });
                          },
                          textlabel: calc.title,
                          backgroundColor: calc.backGroundColor,
                          textColor: calc.textbackGroundColor,
                        );
                      },
                    )
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }

  void updateUi(Buttons buttons) {
    var res = 0.0;
    result += Calculator(buttons).numbers;
    result = doescontaindot(result);
    switch (buttons) {
      case Buttons.AC:
        result = '';
        number1 = 0;
        number2 = 0;

        break;
      case Buttons.plusMinus:
        String char = '-';
        result = char + result;
        if (result.length > 1) number1 = double.parse(result);
        if (result.startsWith('--')) {
          result = result.replaceAll('--', '-');
        }
        break;
      case Buttons.mod:
        res = double.parse(result) / 100;
        result = res.toStringAsFixed(0);
        break;
      case Buttons.add:
        initNumbers();
        isAdd = true;
        break;
      case Buttons.multipy:
        initNumbers();
        ismultiply = true;
        break;
      case Buttons.devide:
        initNumbers();
        isDevide = true;
        break;
      case Buttons.minus:
        initNumbers();
        issubtract = true;
        break;
      case Buttons.equal:
        if (isAdd) {
          number2 = double.parse(result);
          res = number1 + number2;
          print('added numbers result is $res');
          result = res.toStringAsFixed(0);
          isAdd = false;
          number1 = double.parse(result);
        }
        if (ismultiply) {
          number2 = double.parse(result);
          res = number1 * number2;
          print('multiply numbers result is $res');
          result = res.toStringAsFixed(0);
          ismultiply = false;
          number1 = double.parse(result);
        }

        if (isDevide) {
          number2 = double.parse(result);
          res = number1 / number2;
          print('devide numbers result is $res');
          result = res.toStringAsFixed(0);
          isDevide = false;
          number1 = double.parse(result);
        }
        if (issubtract) {
          number2 = double.parse(result);
          res = number1 - number2;
          print('devide numbers result is $res');
          result = res.toStringAsFixed(0);
          issubtract = false;
          number1 = double.parse(result);
        }
        break;
      default:
    }
  }

  void initNumbers() {
    if (number1 == 0) {
      number1 = double.parse(result);
      print('number1 = $number1');
    } else {
      number2 = double.parse(result);
      print('number2 = $number2');
    }
    result = '';
  }

  String doescontaindot(String res) {
    //ii xisaabi meqa dot lasameyi

    int dot = 0;
    if (res.startsWith('..')) {
      res = res.replaceAll('..', '.');
      //recursive call
      doescontaindot(res);
    }

    for (int i = 0; i < res.length; i++) {
      if (res[i].contains('.')) {
        dot++;
      }

      if (dot > 1 && res[i].contains('.')) {
        res = res.substring(0, i);
        break;
      }
    }
    return res;
  }
}
