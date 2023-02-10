import 'package:flutter/material.dart';
import 'package:food_delivery_app/views/chat_page.dart';
import 'package:food_delivery_app/views/get_started_page.dart';
import 'package:food_delivery_app/views/home_page.dart';
import 'package:food_delivery_app/views/profile_page.dart';
import 'package:food_delivery_app/views/splash_page.dart';

import '../views/main_page.dart';
import '../views/orders_pages.dart';

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
    case MainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => MainPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case OrdersPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrdersPage(),
      );
    case ChatPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatPage(),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfilePage(),
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
