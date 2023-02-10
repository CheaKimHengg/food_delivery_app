import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/get_started_page.dart';
import 'package:food_delivery_app/views/home_page.dart';
import 'package:food_delivery_app/views/splash_page.dart';

Route<RouteSettings> onGenerateRoute(RouteSettings settings) {
  var args = settings.arguments;

  switch (settings.name) {
    case SplashPage.routeMame:
      return MaterialPageRoute(
        builder: (context) => SplashPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePage(
          arguments: args as Map<String, dynamic>,
        ),
      );
    case GetStartedPage.routeName:
      return MaterialPageRoute(
        builder: (context) => GetStartedPage(
          argument: args as GetStartedPageArgument,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
