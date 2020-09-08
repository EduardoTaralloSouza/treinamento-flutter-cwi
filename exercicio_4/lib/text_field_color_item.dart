import 'package:flutter/material.dart';

class TextFieldColorItem extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const TextFieldColorItem({Key key,
    this.title = 'Title',
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: title,
          labelStyle: TextStyle(color: Colors.white, fontSize: 16),
        ),
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.white, fontSize: 20),
        controller: controller,
      ),
    );
  }
}