import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/vertical_listview_book_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        Padding(
          padding: const EdgeInsets.only(left: 22.0, bottom: 8),
          child: const Text('Search Results', style: Styles.title18),
        ),
        SearchResultList(),
      ],
    );
  }
}

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => VerticalListBookItem(),
        itemCount: 10,
      ),
    );
  }
}
