import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/home_page.dart';

import 'main_page.dart';

class GetStartedPageArgument {
  final String title;
  final String description;

  GetStartedPageArgument({required this.title, required this.description});
}

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key, required this.argument}) : super(key: key);

  final GetStartedPageArgument argument;

  static const String routeName = '/get_started';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/get_started_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Foode ${argument.title}",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Text(
                      "The best food ordering and delivery app of the century",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          //pushReplacementNamed cant turn back
                          //pushNamed can turn back
                          Navigator.pushReplacementNamed(
                            context,
                            MainPage.routeName,
                            // context, HomePage.routeName, //'/home'
                            // arguments: {
                            //   'title': argument.title,
                            //   'description': argument.description,
                            // },
                          );
                        },
                        child: const Text("Get Started"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
