import 'package:flutter/material.dart';

class LexieduLogo extends StatelessWidget {
  const LexieduLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage('assets/logo.png'),
        ),
      ),
    );
  }
}
