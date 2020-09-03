import 'package:flutter/material.dart';

class ColorfulBlock extends StatelessWidget {
  final Color color;

  const ColorfulBlock({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}
