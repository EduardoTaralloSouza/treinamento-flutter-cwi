import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final String text;
  final void Function(String) cb;

//  const NumberButton({Key key, this.text, this.press, this.np,}) : super(key: key);

  NumberButton({
    @required this.text,
    @required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: RawMaterialButton(
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size(75, 75)),
        onPressed: () => cb(text),
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: 36)),
        fillColor: Color.fromRGBO(56, 54, 56, 1.0),
      ),
    );
  }
}