import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../filter/restaurant_card.dart';
import '../filter/search_and_filter.dart';

class PopularListPage extends StatelessWidget {
  const PopularListPage({Key? key}) : super(key: key);

  static const String routeName = '/popular_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 70,
            leading: Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 36,
                    child: IconButton(
                      splashRadius: 2,
                      iconSize: 20,
                      padding: EdgeInsets.only(),
                      icon: Icon(Icons.arrow_back_ios_new),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Theme.of(context).primaryColor,
                    ),
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            title: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Popular Restaurant',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SearchAndFilterWidget(),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 16,
            ),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return RestaurantItemCard(
                  index: 0,
                  title: 'Lovy Food',
                  subtitle: '10 min',
                  imagePath: 'assets/img/lovy_food.png',
                  margin: EdgeInsets.zero,
                );
              }, childCount: 10),
            ),
          ),
        ],
      ),
    );
  }
}
