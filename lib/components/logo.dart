import 'package:flutter/material.dart';
import 'package:pda/util/colors.dart';

import '../util/responsive.dart';

class Logo extends StatelessWidget {
  final int value;
  const Logo(this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(responsive(context) * 2),
          height: responsive(context) * value,
          width: responsive(context) * value,
          child: Image.asset(
            'assets/img/graduate.png',
            scale: 1,
          ),
        ),
      ],
    );
  }
}
