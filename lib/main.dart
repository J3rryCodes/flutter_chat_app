import 'package:flutter/material.dart';
import 'package:message_app/pages/loginRegisraion/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const int _blackPrimaryValue = 0xFF000000;
  static const MaterialColor primaryBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(_blackPrimaryValue),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.black,
        primarySwatch: primaryBlack,
      ),
      home: LoginPage(),
    );
  }
}
