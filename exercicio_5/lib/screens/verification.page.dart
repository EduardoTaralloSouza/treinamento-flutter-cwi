import 'package:exercicio_5/Components/custom_buttom.dart';
import 'package:exercicio_5/Components/text_field_item.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController codeController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Color(0xFF4A4A4A),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: Container(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Verification',
                      style: TextStyle(
                          fontSize: 34,
                          fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'a four digit verification code has been\n'
                          'sent to your mobile number',
                      style: TextStyle(
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                        width: 150,
                        child: TextFieldItem(
                          title: 'Code',
                          msgError: 'Enter the code we just sent',
                          keyboardType: TextInputType.number,
                          fontSize: 26,
                          controller: codeController,
                        ),
                    ),
                    SizedBox(height: 80),
                    CustomButton(
                      text: 'Verify',
                      textColor: Colors.white,
                      backgroundColor: Color(0xFFE83F3F),
                      press: () {
                        if(_formKey.currentState.validate()) {
                          print('Verificação efetuada com sucesso!!');
                          Navigator.pushNamed(context, '/loginPage');
                        }
                      },
                    ),
                    CustomButton(
                      text: 'Resend',
                      textColor: Color(0xFFE83F3F),
                      backgroundColor: Colors.white, press: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
