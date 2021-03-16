import 'package:flutter/material.dart';
import 'package:message_app/pages/loginRegisraion/registration_page.dart';
import 'package:message_app/pages/widgets/custom_widgets.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenHeight * 0.2,
              ),
              customMainHeading("Hello\nWellcome Back"),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              inputFields(text: "Email", controller: _emailController),
              inputFields(text: "Password", controller: _passwordController),
              mainButton(text: "Login", onTap: () {}),
              linkText(
                  text: "New User? Register",
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: RegistrationPage(),
                            type: PageTransitionType.fade));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
