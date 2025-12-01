import 'package:bookverse/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'best_seller_sliver_list.dart';
import 'books_listview.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BooksListView(),
                    Divider(
                      indent: MediaQuery.of(context).size.width * 0.25,
                      endIndent: MediaQuery.of(context).size.width * 0.25,
                      height: 42,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: const Text('Best Seller', style: Styles.title18),
                    ),
                  ],
                ),
              ),
              BestSellerSliverList(),
            ],
          ),
        ),
      ],
    );
  }
}
