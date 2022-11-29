import 'package:flutter/material.dart';

import '../util/colors.dart';

class InfoTitle extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const InfoTitle({this.title, this.subtitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title!,
            style: TextStyle(
              color: $n_medium,
              fontWeight: FontWeight.bold,
            )),
        Text(subtitle!, style: TextStyle(color: $p_orange_dark))
      ],
    );
  }
}
