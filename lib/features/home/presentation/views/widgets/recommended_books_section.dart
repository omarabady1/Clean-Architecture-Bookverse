import 'package:bookverse/features/home/presentation/views/widgets/recommended_books_list.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class RecommendedBooksSection extends StatelessWidget {
  const RecommendedBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Text(
              'You can also like',
              style: Styles.title18.copyWith(fontSize: 14),
            ),
          ),
        ),
        SizedBox(height: 16),
        RecommendedBooksList(),
      ],
    );
  }
}
