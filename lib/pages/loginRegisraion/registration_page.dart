import 'package:flutter/material.dart';
import 'package:message_app/pages/loginRegisraion/login_page.dart';
import 'package:message_app/pages/widgets/custom_widgets.dart';
import 'package:page_transition/page_transition.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _conPasswordController = TextEditingController();
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
              customMainHeading("Hello\nHappy to See you"),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              inputFields(text: "Email", controller: _emailController),
              inputFields(text: "Password", controller: _passwordController),
              inputFields(
                  text: "Confirmation Password",
                  controller: _conPasswordController),
              mainButton(text: "Register", onTap: () {}),
              linkText(
                  text: "Already Account? Login",
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: LoginPage(), type: PageTransitionType.fade));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
