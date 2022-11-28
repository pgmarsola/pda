import 'package:flutter/material.dart';
import 'package:pda/util/colors.dart';

class Load extends StatelessWidget {
  const Load({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: $p_orange_light,
      ),
    );
  }
}
