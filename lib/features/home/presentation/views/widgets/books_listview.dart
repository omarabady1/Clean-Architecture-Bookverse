import 'package:flutter/material.dart';

import 'horizontal_listview_book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HorizontalListBookItem();
        },
        itemCount: 13,
      ),
    );
  }
}
