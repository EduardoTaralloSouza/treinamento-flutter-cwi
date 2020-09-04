import 'package:calculator/components/keyboard.dart';
import 'package:calculator/models/operation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/display.dart';

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final Operation operation = Operation();

  _onPressed(String command) {
      setState(() {
        operation.applyCommand(command);
      });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp
    ]);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.only(bottom: 40),
          child: Column(
            children: <Widget>[
              Display(text: operation.value,),
              Keyboard(_onPressed),
            ],
          ),
        ),
      ),
    );
  }
}
