import 'package:bookverse/core/utils/app_router.dart';
import 'package:bookverse/core/utils/simple_bloc_observer.dart';
import 'package:bookverse/features/home/data/repos/home_repo_implementaion.dart';
import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:bookverse/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookverse/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:bookverse/features/home/presentation/manager/featured_books_cubit.dart';
import 'package:bookverse/features/home/presentation/manager/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'constants.dart';
import 'core/utils/functions/setup_service_locator.dart';

void main() async {
  setupServiceLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Bookverse());
}

class Bookverse extends StatelessWidget {
  const Bookverse({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(locator.get<HomeRepoImpl>()),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUseCase(locator.get<HomeRepoImpl>()),
            );
          },
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
