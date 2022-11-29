import 'package:flutter/material.dart';

import '../util/responsive.dart';

class IButton extends StatefulWidget {
  final Function()? press;
  final String? title;
  final Color? background;
  final Color? titleColor;
  final IconData? icon;
  const IButton(
      {this.background,
      this.titleColor,
      this.title,
      this.press,
      this.icon,
      super.key});

  @override
  State<IButton> createState() => _IButtonState();
}

class _IButtonState extends State<IButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: widget.press,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: responsive(context) * 2),
        backgroundColor: widget.background,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
      label: Text(
        widget.title!.toUpperCase(),
        style: TextStyle(
          fontSize: 14,
          color: widget.titleColor,
        ),
      ),
      icon: Icon(
        widget.icon,
        color: widget.titleColor,
        size: 16,
      ),
    );
  }
}
