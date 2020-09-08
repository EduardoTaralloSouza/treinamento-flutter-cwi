import 'package:exercicio_4/color_utils.dart';
import 'package:exercicio_4/rounded_button.dart';
import 'package:exercicio_4/text_field_color_item.dart';
import 'package:flutter/material.dart';

class ColorPalette extends StatefulWidget {

  @override
  _ColorPaletteState createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> {

  TextEditingController firstColorHex = TextEditingController();
  TextEditingController secondColorHex = TextEditingController();
  TextEditingController thirdColorHex = TextEditingController();

  _updatesColors() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                        color: firstColorHex.text == '' ? Colors.pink : ColorUtils.fromHex(firstColorHex.text),
                      child: Center(
                        child: Container(
                          width: 130,
                          child: TextFieldColorItem(
                            title: 'First Color Hex',
                            controller: firstColorHex,
                          ),
                        ),
                      ),
                    ),
                ),
                Expanded(
                    child: Container(
                        color: secondColorHex.text == '' ? Colors.greenAccent : ColorUtils.fromHex(secondColorHex.text),
                      child: Center(
                        child: Container(
                          width: 130,
                          child: TextFieldColorItem(
                            title: 'Second Color Hex',
                            controller: secondColorHex,
                          ),
                        ),
                      ),
                    ),
                ),
                Expanded(
                    child: Container(
                        color: thirdColorHex.text == '' ? Colors.purpleAccent : ColorUtils.fromHex(thirdColorHex.text),
                      child: Center(
                        child: Container(
                          width: 130,
                          child: TextFieldColorItem(
                            title: 'Third Color Hex',
                            controller: thirdColorHex,
                          ),
                        ),
                      ),
                    ),
                ),
                RoundedButton(
                  text: 'ATUALIZAR',
                  textColor: Colors.white,
                  BackgroundColor: Colors.grey,
                  press: () {
                    _updatesColors();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}