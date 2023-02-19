import 'package:flutter/material.dart';
import 'package:food_delivery_app/filter/top_search.dart';

import '../filter/restaurant_card.dart';

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
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
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
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
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
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          TopSearchCustomAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 30,
            ),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
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
