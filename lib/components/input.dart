import 'package:flutter/material.dart';

import '../util/colors.dart';
import '../util/responsive.dart';

class Input extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool? formatter;
  const Input({super.key, this.controller, this.hintText, this.formatter});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        keyboardType:
            widget.formatter! ? TextInputType.number : TextInputType.text,
        textAlign: TextAlign.left,
        style: TextStyle(color: $n_dark, fontSize: 16),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(responsive(context) * 2.5),
            hintText: widget.hintText,
            filled: true,
            fillColor: $n_white,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: $n_light),
                borderRadius: const BorderRadius.all(Radius.circular(8)))),
        validator: (value) {
          if (value!.isEmpty) {
            return "Campo obrigatório";
          }
        });
  }
}
