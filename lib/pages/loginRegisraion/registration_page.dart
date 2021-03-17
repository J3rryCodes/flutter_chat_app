import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:message_app/pages/bloc/firebaseauthentication_bloc.dart';
import 'package:message_app/pages/error_page.dart';
import 'package:message_app/pages/home/message_page.dart';
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
      body:
          BlocListener<FirebaseauthenticationBloc, FirebaseauthenticationState>(
        listener: (context, state) {
          if (state is FirebaseauthenticationCreatingSuccesfull)
            Navigator.pushReplacement(
                context,
                PageTransition(
                    child: MessagePage(), type: PageTransitionType.fade));
          else if (state is FirebaseauthenticationErrorState)
            showScaffoldMessage(
                context, state.message.toString(), Colors.black);
        },
        child: Padding(
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
                BlocBuilder<FirebaseauthenticationBloc,
                    FirebaseauthenticationState>(
                  builder: (context, state) {
                    if (state is FirebaseauthenticationCreating)
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    else if (state is FirebaseauthenticationErrorState)
                      return ErrorPage();
                    else
                      return mainButton(
                          text: "Register",
                          onTap: () {
                            _registerUser(context);
                          });
                  },
                ),
                linkText(
                    text: "Already Account? Login",
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: LoginPage(),
                              type: PageTransitionType.fade));
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _registerUser(BuildContext context) {
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_emailController.text))
      showScaffoldMessage(context, "Invalid email address", Colors.black);
    else if (_passwordController.text != _conPasswordController.text)
      showScaffoldMessage(context, "Password mismatch", Colors.black);
    else
      BlocProvider.of<FirebaseauthenticationBloc>(context, listen: false).add(
          FirebaseauthenticationCreateEvent(
              _emailController.text, _passwordController.text));
    //     Move to next page
  }
}
