import 'package:bookly/features/home/presentation/views/BookDetailsView.dart';
import 'package:bookly/features/home/presentation/views/HomeView.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kHomeView = '/homeView';
  static const String kBookDetailsView = '/bookDetailsView';

   static final router = GoRouter(
    routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) =>const HomeView(),
    ),  GoRoute(
      path: kBookDetailsView,
      builder: (context, state) =>const BookDetailsView(),
    ),


  ]);
}
