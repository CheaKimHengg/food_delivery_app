import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  static const String routeName = '/chat_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
      ),
      body: Container(
        child: Center(
          child: Text("Chat Pages"),
        ),
      ),
    );
  }
}
