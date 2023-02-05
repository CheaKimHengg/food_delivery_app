import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/home_page.dart';
import 'package:food_delivery_app/views/splash_page.dart';

Route<RouteSettings> onGenerateRoute(settings) {
  switch (settings.name) {
    case SplashPage.routeMame:
      return MaterialPageRoute(
        builder: (context) => SplashPage(),
      );
    case HomePage.routName:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
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
