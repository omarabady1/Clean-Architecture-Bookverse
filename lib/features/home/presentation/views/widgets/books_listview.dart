import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import 'horizontal_listview_book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView(this.books,{super.key});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return HorizontalListBookItem(books[index]);
        },
        itemCount: books.length,
      ),
    );
  }
}
