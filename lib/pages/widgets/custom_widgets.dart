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
      onTap: () => onTap(),
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

Widget customMessageView({@required String message, @required isOrgin}) {
  return Container(
    margin: EdgeInsets.all(12),
    child: Row(
      mainAxisAlignment:
          isOrgin ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: isOrgin ? Colors.black : Colors.grey[600]),
          child: Text(
            message,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ],
    ),
  );
}

void showScaffoldMessage(BuildContext context, String message, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: TextStyle(color: Colors.white),
    ),
    backgroundColor: color,
    duration: const Duration(seconds: 2),
  ));
}
