import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  final String title;
  final String msgError;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final double fontSize;

  const TextFieldItem({Key key,
    this.title = 'Title',
    this.msgError,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: title,
          labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Color(0xFFE83F3F),
            ),
          ),
        ),
        textAlign: TextAlign.start,
        style: TextStyle(color: Color(0xFF3D4A5A), fontSize: fontSize),
        controller: controller,
        obscureText: obscureText,
        validator: (value) {
          if(value.isEmpty){
            return msgError;
          }
          return null;
        },
      ),
    );
  }
}