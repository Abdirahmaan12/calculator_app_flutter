import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class FabButton extends StatelessWidget {
  final String textlabel;
  final Color backgroundColor;
  final Color textColor;
  final Function onPress;

  FabButton({
    required this.textlabel,
    required this.backgroundColor,
    required this.textColor,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onPress();
      },
      // ignore: sort_child_properties_last
      child: Text(
        textlabel,
        style: TextStyle(color: textColor, fontSize: 35),
      ),
      padding: textlabel == '0'
          ? const EdgeInsets.fromLTRB(20, 20, 120, 20)
          : const EdgeInsets.all(20),
      fillColor: backgroundColor,
      shape: textlabel == '0' ? StadiumBorder() : CircleBorder(),
      constraints: BoxConstraints(
        minHeight: 70,
        minWidth: 94,
      ),
    );
  }
}
