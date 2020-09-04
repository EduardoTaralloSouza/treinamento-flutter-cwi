import 'package:flutter/material.dart';

class OperationButton extends StatefulWidget {
  final String text;
  final void Function(String) cb;

  const OperationButton({Key key, this.text, this.cb}) : super(key: key);

  @override
  _OperationButtonState createState() => _OperationButtonState();
}




class _OperationButtonState extends State<OperationButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: RawMaterialButton(
        shape: const CircleBorder(),
        constraints: BoxConstraints.tight(Size(75, 75)),
        onPressed: () => widget.cb(widget.text),
        child: Text(
          widget.text,
          style: TextStyle(color: Colors.white, fontSize: 36),
        ),
        fillColor: Colors.orange,
      ),
    );
  }
}

