import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/presentaion/view/search_views.dart';
import 'package:bookly/Features/splash/presentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeview = '/homeview';
  static const kDetailpage = '/detailspage';
  static const kSearchView = '/searchview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchViwe(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kDetailpage,
        builder: (context, state) =>
            BookDetailsView(bookModel: state.extra! as BookModel),
      )
    ],
  );
}
