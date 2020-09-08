
import 'package:exercicio_5/Components/custom_buttom.dart';
import 'package:exercicio_5/Components/text_field_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  // MARK: Variables

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController referalCodeController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  // MARK:- Methods

  void clearAll() {
    fullNameController.text = '';
    emailAddressController.text = '';
    mobileNumberController.text = '';
    countryController.text = '';
    passwordController.text = '';
    confirmPasswordController.text = '';
    referalCodeController.text = '';

    setState(() {
      _formKey = GlobalKey<FormState>();
    });
  }

  void printRegisteredUser() {
    print(
        'Nome: ${fullNameController.text}\n'
            'Email: ${emailAddressController.text}\n'
            'Mobile Number: ${mobileNumberController.text}\n'
            'Country: ${countryController.text}\n'
            'Password: ${passwordController.text}\n'
            'Confirm Password: ${confirmPasswordController.text}\n'
            'Referal Code: ${referalCodeController.text}\n'
    );
  }

  _goToVerificationPage() {
    Navigator.pushNamed(context, '/verificationPage');
  }

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
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Clear',
                style: TextStyle(
                  color: Color(0xFFE83F3F),
                  fontWeight: FontWeight.normal,
                ),
              ),
              onPressed: () {
                clearAll();
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
          child: Container(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Text('Register', style: TextStyle(fontSize: 34, fontStyle: FontStyle.italic),),
                    SizedBox(height: 30),
                    TextFieldItem(
                      title: 'Full Name',
                      msgError: 'Enter your Full Name',
                      keyboardType: TextInputType.text,
                      controller: fullNameController,
                    ),
                    SizedBox(height: 10),
                    TextFieldItem(
                      title: 'Email Address',
                      msgError: 'Enter your Email Address',
                      keyboardType: TextInputType.emailAddress,
                      controller: emailAddressController,
                    ),
                    SizedBox(height: 10),
                    TextFieldItem(
                      title: 'Mobile Number',
                      msgError: 'Enter your Mobile Number',
                      keyboardType: TextInputType.phone,
                      controller: mobileNumberController,
                    ),
                    SizedBox(height: 10),
                    TextFieldItem(
                      title: 'Country',
                      msgError: 'Enter your Country',
                      keyboardType: TextInputType.text,
                      controller: countryController,
                    ),
                    SizedBox(height: 10),
                    TextFieldItem(
                      title: 'Password',
                      msgError: 'Enter your Password',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: passwordController,
                    ),
                    SizedBox(height: 10),
                    TextFieldItem(
                      title: 'Confirm Password',
                      msgError: 'Enter your Confirm Password',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      controller: confirmPasswordController,
                    ),
                    SizedBox(height: 10),
                    TextFieldItem(
                      title: 'Referal Code(Optional)',
                      keyboardType: TextInputType.number,
                      controller: referalCodeController,
                    ),
                    SizedBox(height: 10),
                    CustomButton(
                      text: 'Register',
                      textColor: Colors.white,
                      backgroundColor: Color(0xFFE83F3F),
                      press: () {
                        if(_formKey.currentState.validate()){
                          printRegisteredUser();
                          _goToVerificationPage();
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