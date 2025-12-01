import 'package:bookverse/core/utils/transitions.dart';
import 'package:bookverse/features/home/presentation/views/homeview.dart';
import 'package:bookverse/features/search/presentation/views/search_view.dart';
import 'package:bookverse/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/home/presentation/views/book_details_view.dart';

abstract class AppRouter {
  static const kHomeViewPath = '/homeView';
  static const kBookDetailsViewPath = '/bookDetailsView';
  static const kSearchViewPath = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', //initial route
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewPath,
        pageBuilder: (context, state) {
          return CustomTransitions.fadeWithSlideUpTransition(
            state,
            const HomeView(),
          );
        },
      ),
      GoRoute(
        path: kBookDetailsViewPath,
        pageBuilder: (context, state) {
          return CustomTransitions.slidLeftTransition(
            state,
            const BookDetailsView(),
          );
        },
      ),
      GoRoute(
        path: kSearchViewPath,
        pageBuilder: (context, state) {
          return CustomTransitions.slidLeftTransition(
            state,
            const SearchView(),
          );
        },
      ),
    ],
  );
}
