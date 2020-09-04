import 'package:calculator/components/unary_operation_button.dart';
import 'package:calculator/components/zero_button.dart';
import 'package:flutter/material.dart';
import 'number_button.dart';
import 'operation_button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;
  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              UnaryOperatorButton(text: 'AC', cb: cb,),
              UnaryOperatorButton(text: '⁺/-', cb: cb,),
              UnaryOperatorButton(text: '%', cb: cb,),
              OperationButton(text: '÷', cb: cb,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NumberButton(text: '7', cb: cb,),
              NumberButton(text: '8', cb: cb,),
              NumberButton(text: '9', cb: cb,),
              OperationButton(text: 'x', cb: cb,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NumberButton(text: '4', cb: cb,),
              NumberButton(text: '5', cb: cb,),
              NumberButton(text: '6', cb: cb,),
              OperationButton(text: '-', cb: cb,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NumberButton(text: '1', cb: cb,),
              NumberButton(text: '2', cb: cb,),
              NumberButton(text: '3', cb: cb,),
              OperationButton(text: '+', cb: cb,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ZeroButton(text: '0', cb: cb,),
              NumberButton(text: '.', cb: cb,),
              OperationButton(text: '=', cb: cb,),
            ],
          )
        ],
      ),
    );
  }
}
