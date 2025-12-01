import 'package:bookverse/features/home/presentation/views/widgets/recommended_books_item.dart';
import 'package:flutter/material.dart';
class RecommendedBooksList extends StatelessWidget {
  const RecommendedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 12),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return RecommendedBooksItem();
        },
        itemCount: 13,
      ),
    );
  }
}
