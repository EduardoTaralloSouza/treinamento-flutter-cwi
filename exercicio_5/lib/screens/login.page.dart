import 'package:exercicio_5/Components/custom_buttom.dart';
import 'package:exercicio_5/Components/text_field_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  _goToRegisterPage() {
    Navigator.pushNamed(context, '/registerPage');
  }

  _printUserLogin() {
    print(''
        'email: ${emailAddressController.text}\n'
        'password: ${passwordController.text}\n'
    );
  }

  _clearAll() {
    emailAddressController.text = '';
    passwordController.text = '';
    setState(() {
      _formKey = GlobalKey<FormState>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                    'Login',
                    style: TextStyle(
                        fontSize: 34,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFieldItem(
                    title: 'Email Address',
                    keyboardType: TextInputType.emailAddress,
                    msgError: 'Enter your Full Name',
                    controller: emailAddressController,
                  ),
                  SizedBox(height: 10),
                  TextFieldItem(
                    title: 'Password',
                    keyboardType: TextInputType.text,
                    msgError: 'Enter your Password',
                    controller: passwordController,
                    obscureText: true,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: AlignmentDirectional.centerEnd,
                    child: CupertinoButton(
                      padding: EdgeInsets.only(right: 0),
                      onPressed: () {_goToRegisterPage();},
                      child: Text(
                        'Dont have an account?',
                        style: TextStyle(
                          color: Color(0xFFE83F3F),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                    text: 'Continue',
                    textColor: Colors.white,
                    backgroundColor: Color(0xFFE83F3F),
                    press: () {
                      if(_formKey.currentState.validate()){
                        _printUserLogin();
                        _clearAll();
                      }
                    },
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
