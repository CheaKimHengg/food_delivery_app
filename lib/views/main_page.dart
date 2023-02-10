import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:food_delivery_app/views/chat_page.dart';
import 'package:food_delivery_app/views/home_page.dart';
import 'package:food_delivery_app/views/orders_pages.dart';
import 'package:food_delivery_app/views/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const String routeName = '/main_page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //Page list
  final List<Widget> _pages = [
    const HomePage(),
    const OrdersPage(),
    const ChatPage(),
    const ProfilePage(),
  ];

  //current page
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Main Page'),
      // ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),

        itemCornerRadius: 12,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            title: Text('Orders'),
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Messages'),
            activeColor: Colors.pink,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
