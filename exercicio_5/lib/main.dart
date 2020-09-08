import 'package:exercicio_5/screens/login.page.dart';
import 'package:exercicio_5/screens/register.page.dart';
import 'package:exercicio_5/screens/verification.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/loginPage',
      routes: {
        '/loginPage': (context) => LoginPage(),
        '/registerPage' : (context) => RegisterPage(),
        '/verificationPage' : (context) => VerificationPage(),
      },
    );
  }
}
