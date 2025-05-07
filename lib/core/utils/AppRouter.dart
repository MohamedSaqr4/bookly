import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/HomeRepoImplimintation.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/BookDetailsView.dart';
import 'package:bookly/features/home/presentation/views/HomeView.dart';
import 'package:bookly/features/search/presentation/views/searchview.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetailsView = '/bookDetailsView';
  static const String kSearchView = '/SearchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimillarBooksCubit(getIt.get<HomeRepoImplementation>()),
        child:  BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
