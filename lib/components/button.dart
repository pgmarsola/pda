import 'package:flutter/material.dart';

import '../util/colors.dart';
import '../util/responsive.dart';

class Button extends StatefulWidget {
  final Function()? press;
  final String? title;
  final bool? primary;
  const Button({this.primary, this.title, this.press, super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.press,
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: responsive(context) * 2),
            backgroundColor: widget.primary! ? $p_orange_dark : $n_white,
            side: BorderSide(
                color: widget.primary! ? transparent : $p_orange_dark,
                width: 2),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)))),
        child: Text(
          widget.title!,
          style: TextStyle(
            fontSize: 14,
            color: widget.primary! ? $n_white : $p_orange_dark,
          ),
        ));
  }
}
