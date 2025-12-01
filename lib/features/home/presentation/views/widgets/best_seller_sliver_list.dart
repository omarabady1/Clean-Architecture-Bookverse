import 'package:flutter/material.dart';

import 'vertical_listview_book_item.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => VerticalListBookItem(),
        childCount: 10,
      ),
    );
  }
}
