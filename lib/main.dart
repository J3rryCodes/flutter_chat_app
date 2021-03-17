import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:message_app/pages/bloc/firebaseauthentication_bloc.dart';
import 'package:message_app/pages/loginRegisraion/login_page.dart';

import 'pages/error_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const int _blackPrimaryValue = 0xFF000000;
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FirebaseauthenticationBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.black,
          primarySwatch: primaryBlack,
        ),
        home: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            debugPrint("===> ${snapshot.connectionState.toString()}");
            if (snapshot.connectionState == ConnectionState.done)
              return LoginPage();
            else
              return ErrorPage();
          },
        ),
      ),
    );
  }
}
