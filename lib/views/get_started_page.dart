import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/home_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  static const String routeName = '/get_started';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.routName);
        },
        child: const Text('Get Started'),
      ),
    )
  }
}
