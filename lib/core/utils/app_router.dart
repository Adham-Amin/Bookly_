import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract final class AppRouter {
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';
  static const String searchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BookDetailsView(
          book: state.extra as BookModel,
        ),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
