import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:message_app/pages/bloc/firebaseauthentication_bloc.dart';
import 'package:message_app/pages/home/message_page.dart';
import 'package:message_app/pages/loginRegisraion/login_page.dart';

class AuthController extends StatefulWidget {
  @override
  _AuthControllerState createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> {
  bool _isLogedIn = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<FirebaseauthenticationBloc,
        FirebaseauthenticationState>(
      listener: (context, state) {
        if (state is FirebaseauthenticationLogingSuccesfull ||
            state is FirebaseauthenticationCreatingSuccesfull)
          setState(() {
            _isLogedIn = true;
          });
        if (state is FirebaseauthenticationLogoutState)
          setState(() {
            _isLogedIn = false;
          });
      },
      child: _isLogedIn ? MessagePage() : LoginPage(),
    );
  }
}
