import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:bookverse/features/home/presentation/manager/newest_books_cubit.dart';
import 'package:bookverse/features/home/presentation/views/widgets/newest_books_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/custom_snack_bar.dart';
import 'custom_newest_books_item_shimmer.dart';

class NewestBooksSliverListBlocConsumer extends StatefulWidget {
  const NewestBooksSliverListBlocConsumer({super.key});

  @override
  State<NewestBooksSliverListBlocConsumer> createState() =>
      _NewestBooksSliverListBlocConsumerState();
}

class _NewestBooksSliverListBlocConsumerState
    extends State<NewestBooksSliverListBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {
        if (state is NewestBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is NewestBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: CustomSnackBar('Failed to fetch data'),
              behavior: SnackBarBehavior.floating,
              backgroundColor: const Color(0xffc04a65),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(16),
              duration: const Duration(seconds: 3),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is NewestBooksSuccess ||
            state is NewestBooksPaginationLoading ||
            state is NewestBooksPaginationFailure) {
          return NewestBooksSliverList(books);
        } else if (state is NewestBooksFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return  SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => NewestBooksItemShimmer(),
              childCount: 5,
            ),
          );
        }
      },
    );
  }
}
