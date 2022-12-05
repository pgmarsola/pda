import 'package:flutter/material.dart';

import '../util/colors.dart';
import '../util/responsive.dart';

class Input extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText;
  final bool? formatter;
  final bool? password;
  const Input(
      {super.key,
      this.controller,
      this.labelText,
      this.formatter,
      this.password});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool visible = false;

  @override
  void initState() {
    super.initState();
    visible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        obscureText: widget.password! ? !visible : false,
        keyboardType:
            widget.formatter! ? TextInputType.emailAddress : TextInputType.text,
        textAlign: TextAlign.left,
        style: TextStyle(color: $n_dark, fontSize: 16),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(responsive(context) * 2.5),
            labelText: widget.labelText,
            filled: true,
            fillColor: $n_white,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: $n_light),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            suffixIcon: widget.password!
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    icon: Icon(
                      visible ? Icons.visibility : Icons.visibility_off,
                      color: $n_light,
                    ))
                : SizedBox.shrink()),
        validator: (value) {
          if (value!.isEmpty) {
            return "Campo obrigatório";
          }
        });
  }
}
