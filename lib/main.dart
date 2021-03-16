import 'package:flutter/material.dart';
import 'package:message_app/pages/loginRegisraion/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.green,
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}
