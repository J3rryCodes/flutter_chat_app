import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

Widget customMainHeading(String text) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(
        text: text,
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black)),
    TextSpan(
        text: ".",
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green))
  ]));
}

Widget inputFields(
    {@required String text, @required TextEditingController controller}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: text,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.green,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        )),
  );
}

Widget mainButton({@required String text, @required Function onTap}) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: InkWell(
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black,
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    ),
  );
}

linkText({String text, Function onTap}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Align(
      alignment: Alignment.bottomRight,
      child: InkWell(
          child: Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
          onTap: () {
            onTap();
          }),
    ),
  );
}
