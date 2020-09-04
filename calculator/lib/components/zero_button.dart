import 'package:flutter/material.dart';

class ZeroButton extends StatelessWidget {
  final String text;
  final Function press;
  final void Function(String) cb;

  const ZeroButton({Key key, this.press, this.cb, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color.fromRGBO(56, 54, 56, 1.0)),
        child: RawMaterialButton(
          onPressed: () => cb(text),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 36),
          ),
        ),
      ),
    );
  }
}

