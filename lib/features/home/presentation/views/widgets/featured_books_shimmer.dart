import 'package:flutter/material.dart';

import 'custom_horizontal_books_item_shimmer.dart';

class FeaturedBooksShimmer extends StatelessWidget {
  const FeaturedBooksShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HorizontalListBookItemShimmer();
        },
        itemCount: 5,
      ),
    );
  }
}