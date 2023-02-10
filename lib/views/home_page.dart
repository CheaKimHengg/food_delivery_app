import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.arguments}) : super(key: key);

  static const String routeName = '/home';

  final Map<String, dynamic> arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['title'] ?? ''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(arguments['description'] ?? ''),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
