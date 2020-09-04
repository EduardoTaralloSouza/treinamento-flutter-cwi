import 'package:exercicio_2/card_item.dart';
import 'package:exercicio_2/rounded_button.dart';
import 'package:flutter/material.dart';

class PostCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: CloseButton(),
            title: Text('Postcard'),
          ),
          body: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  CardItem(
                    image: Icons.person,
                    backgroundColorImage: Color(0xFFFC3875),
                    title: 'Recipient',
                    subtitle: 'Amelie N Mason',
                  ),
                  SizedBox(height: 20),
                  CardItem(
                    image: Icons.business,
                    backgroundColorImage: Color(0xFFFCAB55),
                    title: 'Address',
                    subtitle: '47 Greyfriars Road, CAPHEATON United Kingdom NE19 5PJ',
                  ),
                  SizedBox(height: 20),
                  CardItem(
                    image: Icons.edit,
                    backgroundColorImage: Color(0xFF22C0FC),
                    title: 'Message',
                    subtitle: 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy',
                  ),
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RoundedButton(
                        backgroundColor: Color(0xFF767676),
                        textColor: Colors.white,
                        text: 'SAVE DRAFT',
                        press: () {},
                      ),
                      SizedBox(width: 10),
                      RoundedButton(
                        backgroundColor: Color(0xFFFC3875),
                        textColor: Colors.white,
                        text: 'REVIEW DESIGN',
                        press: () {},
                      ),
                    ],
                  ),
                ],
              ),
          ),
      ),
    );
  }
}



