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
      // body: _pages[_selectedIndex],
      // bottomNavigationBar: BottomNavyBar(
      //   selectedIndex: _selectedIndex,
      //   showElevation: true,
      //   onItemSelected: (index) => setState(() {
      //     _selectedIndex = index;
      //   }),
      //
      //   itemCornerRadius: 12,
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //
      //
      //   items: <BottomNavyBarItem>[
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('Home'),
      //       activeColor: Colors.red,
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.shopping_bag),
      //       title: Text('Orders'),
      //       activeColor: Colors.purpleAccent,
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.message),
      //       title: Text('Messages'),
      //       activeColor: Colors.pink,
      //     ),
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text('Profile'),
      //       activeColor: Colors.pinkAccent,
      //     ),
      //   ],
      // ),

      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.05),
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ]),
        margin: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 26,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildBottomNavigationBarItem(
              icon: Icons.home,
              label: 'Home',
              index: 0,
            ),
            _buildBottomNavigationBarItem(
              icon: Icons.shopping_bag,
              label: 'Orders',
              index: 1,
            ),
            _buildBottomNavigationBarItem(
              icon: Icons.chat_rounded,
              label: 'Chat',
              index: 2,
            ),
            _buildBottomNavigationBarItem(
              icon: Icons.person,
              label: 'Profile',
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBarItem({
    required IconData icon,
    required int index,
    required String label,
  }) {
    return Expanded(
      child: InkWell(
        radius: 16,
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 450),
          padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: _selectedIndex == index ? 2 : 5
          ),
          decoration: BoxDecoration(
            color: _selectedIndex == index ? Colors.red.shade50 : Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          curve: Curves.fastLinearToSlowEaseIn,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 350),
                child: Icon(
                  icon,
                  color: _selectedIndex == index ? Colors.red : Colors.red.shade400,
                ),
              ),
              const SizedBox(width: 4),
              if( _selectedIndex == index )
                AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  child: Text(
                    label,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
            ],
          ),
        ),

        // child: Container(
        //   height: 40,
        //   decoration: BoxDecoration(
        //     color: _selectedIndex == index ? Colors.red.shade50 : Colors.white,
        //     borderRadius: BorderRadius.circular(8),
        //   ),
        //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     mainAxisSize: MainAxisSize.min,
        //     children: [
        //       Icon(
        //         icon,
        //         color: _selectedIndex == index ? Colors.red : Colors.grey,
        //       ),
        //       const SizedBox(
        //         width: 4,
        //       ),
        //       if (_selectedIndex == index)
        //         Text(
        //           label,
        //           style: TextStyle(
        //             color: Colors.red,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       Text(
        //         '',
        //         style: TextStyle(
        //           color: _selectedIndex == index ? Colors.red : Colors.grey,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

      ),
    );
  }
}
