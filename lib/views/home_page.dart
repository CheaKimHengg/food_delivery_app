import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/constants.dart';

import '../filter/restaurant_card.dart';
import '../filter/search_and_filter.dart';
import '../screen/popular_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopSelection(),
              const SizedBox(
                height: 12,
              ),
              SearchAndFilterWidget(),
              _buildBannerWidget(context),
              _TitleSectionWidget(
                leadingText: 'Popular Restaurants',
                trailingText: 'View all',
                onTap: () {
                  Navigator.pushNamed(context, PopularListPage.routeName);
                },

              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RestaurantItemCard(
                      index: 0,
                      title: 'Lovy Food',
                      subtitle: '10 min',
                      imagePath: 'assets/img/lovy_food.png',
                      margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                    ),
                    RestaurantItemCard(
                      index: 1,
                      title: 'Cloudy Food',
                      subtitle: '10 min',
                      imagePath: 'assets/img/cloudy_resto.png',
                      margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                    ),
                    RestaurantItemCard(
                      index: 2,
                      title: 'Circlo Food',
                      subtitle: '10 min',
                      imagePath: 'assets/img/circlo_resto.png',
                      margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                    ),
                  ],
                ),
              ),
              //teacher card
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       ...List.generate(
              //         4,
              //         (index) {
              //           return Container(
              //             height: 180,
              //             width: 160,
              //             margin: EdgeInsets.only(
              //               right: 16,
              //               bottom: 16,
              //               left: index ==0?16:0,
              //             ),
              //             decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(16),
              //                 boxShadow: [
              //                   BoxShadow(
              //                     color: Colors.grey.withOpacity(0.3),
              //                     spreadRadius: 1,
              //                     blurRadius: 5,
              //                     offset: const Offset(0, 3),
              //                   )
              //                 ]),
              //             alignment: Alignment.center,
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               children: [
              //                 Container(
              //                   height: 80,
              //                   width: 80,
              //                   child: Image.asset("assets/img/lovy_food.png"),
              //                 ),
              //                 const SizedBox(
              //                   height: 10,
              //                 ),
              //                 Text(
              //                   "Lovy Food",
              //                   style: Theme.of(context)
              //                       .textTheme
              //                       .subtitle1!
              //                       .copyWith(
              //                         fontWeight: FontWeight.w500,
              //                       ),
              //                 ),
              //                 Text(
              //                   '10 min',
              //                   style: Theme.of(context)
              //                       .textTheme
              //                       .subtitle2!
              //                       .copyWith(
              //                         fontWeight: FontWeight.w400,
              //                       ),
              //                 ),
              //               ],
              //             ),
              //           );
              //         },
              //       ),
              //     ],
              //   ),
              // ),
              _TitleSectionWidget(
                leadingText: 'Popular Foods',
                trailingText: 'View all',
                onTap: () {},
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 20,
                    ),
                    Container(
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 140,
                            child: Image.asset('assets/img/burger.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Burger',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$10',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Container(
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 140,
                            child: Image.asset('assets/img/pizza.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Pizza',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$12',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Container(
                      height: 180,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 140,
                            child: Image.asset('assets/img/sandwich.png'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Sandwich',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\$5',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 18),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildBannerWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 180,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/img/burger.png').image,
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(width: 2),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Special Deal for December",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Buy Now"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                        foregroundColor: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildTopSelection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              'Hello, KimHeng !',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Icon(
            Icons.notifications_active,
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }
}

class _TitleSectionWidget extends StatelessWidget {
  const _TitleSectionWidget({
    super.key,
    required this.leadingText,
    required this.trailingText,
    this.onTap,
  });

  final String leadingText;
  final String trailingText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              trailingText,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
