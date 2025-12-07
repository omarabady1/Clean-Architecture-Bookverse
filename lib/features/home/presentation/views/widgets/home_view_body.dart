import 'package:bookverse/core/utils/styles.dart';
import 'package:bookverse/features/home/presentation/views/widgets/newest_books_sliver_list_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/newest_books_cubit.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view_bloc_consumer.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late ScrollController _scrollController;
  int nextPage = 1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }
  void _scrollListener() {
    var currentPosition = _scrollController.position.pixels;
    if (currentPosition >= 0.7 * _scrollController.position.maxScrollExtent) {
      if (!isLoading) {
        isLoading = true;
        BlocProvider.of<NewestBooksCubit>(
          context,
        ).fetchNewestBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }
  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeaturedBooksListViewBlocConsumer(),
                    Divider(
                      indent: MediaQuery.of(context).size.width * 0.25,
                      endIndent: MediaQuery.of(context).size.width * 0.25,
                      height: 42,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: const Text('Newest Books', style: Styles.title18),
                    ),
                  ],
                ),
              ),
              NewestBooksSliverListBlocConsumer(),
            ],
          ),
        ),
      ],
    );
  }
}