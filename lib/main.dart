import 'package:bookverse/core/utils/app_router.dart';
import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'constants.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  runApp(const Bookverse());
}

class Bookverse extends StatelessWidget {
  const Bookverse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
    );
  }
}
