import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  final String title;
  final String msgError;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;

  const TextFieldItem({Key key,
    this.title = 'Title',
    this.msgError,
    this.controller,
    this.keyboardType,
    this.obscureText = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: title,
          labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.black, fontSize: 20),
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