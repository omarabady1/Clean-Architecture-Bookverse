import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'vertical_listview_book_item.dart';

class NewestBooksSliverList extends StatelessWidget {
  const NewestBooksSliverList(this.books, {super.key});
  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => VerticalListBookItem(books[index]),
        childCount: books.length,
      ),
    );
  }
}
