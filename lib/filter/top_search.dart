import 'package:flutter/material.dart';
// import 'package:flutter_food_delivery_app/components/search_and_filter_widget.dart';
import 'dart:math' as math;

import 'package:food_delivery_app/filter/search_and_filter.dart';

class TopSearchCustomAppBar extends StatelessWidget {
  const TopSearchCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: TopSearchCustomAppBarDelegate(
        minHeight: 120,
        maxHeight: 120,
        child: SearchAndFilterWidget(),
      ),
    );
  }
}

class TopSearchCustomAppBarDelegate extends SliverPersistentHeaderDelegate {
  TopSearchCustomAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(TopSearchCustomAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
