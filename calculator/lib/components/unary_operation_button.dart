import 'package:flutter/material.dart';

class UnaryOperatorButton extends StatelessWidget {
  final String text;
  final Function press;
  final void Function(String) cb;

  const UnaryOperatorButton({Key key, this.text, this.press, this.cb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: RawMaterialButton(
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size(75, 75)),
        onPressed: () => cb(text),
        child: Text(text, style: TextStyle(color: Colors.black, fontSize: 36)),
        fillColor: Colors.grey,
      ),
    );
  }
}