import 'package:flutter/material.dart';
import 'package:message_app/pages/widgets/custom_widgets.dart';

class MessagePage extends StatelessWidget {
  final List<String> _message = ["hi", "Hello", "How are you", "Fine"];
  final List<bool> _flag = [true, false, true, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Messages"),
      ),
      body: Stack(
        children: [
          _conversations(),
          _sendMessage(),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  _conversations() {
    return ListView(
      children: [
        customMessageView(message: _message[0], isOrgin: _flag[0]),
        customMessageView(message: _message[1], isOrgin: _flag[1]),
        customMessageView(message: _message[2], isOrgin: _flag[2]),
        customMessageView(message: _message[3], isOrgin: _flag[3]),
        customMessageView(message: _message[0], isOrgin: _flag[0]),
        customMessageView(message: _message[1], isOrgin: _flag[1]),
        customMessageView(message: _message[2], isOrgin: _flag[2]),
        customMessageView(message: _message[3], isOrgin: _flag[3]),
        customMessageView(message: _message[0], isOrgin: _flag[0]),
        customMessageView(message: _message[1], isOrgin: _flag[1]),
        customMessageView(message: _message[2], isOrgin: _flag[2]),
        customMessageView(message: _message[3], isOrgin: _flag[3]),
        customMessageView(message: _message[0], isOrgin: _flag[0]),
        customMessageView(message: _message[1], isOrgin: _flag[1]),
        customMessageView(message: _message[2], isOrgin: _flag[2]),
        customMessageView(message: _message[3], isOrgin: _flag[3]),
        customMessageView(message: _message[0], isOrgin: _flag[0]),
        customMessageView(message: _message[1], isOrgin: _flag[1]),
        customMessageView(message: _message[2], isOrgin: _flag[2]),
        customMessageView(message: _message[3], isOrgin: _flag[3]),
        customMessageView(message: _message[0], isOrgin: _flag[0]),
        customMessageView(message: _message[1], isOrgin: _flag[1]),
        customMessageView(message: _message[2], isOrgin: _flag[2]),
        customMessageView(message: _message[3], isOrgin: _flag[3]),
      ],
    );
  }

  Widget _sendMessage() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 4,
              child: TextField(
                  decoration: InputDecoration(
                hintText: "Enter message",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                ),
              )),
            ),
            Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
