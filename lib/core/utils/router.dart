// ignore_for_file: unused_element, unused_field

import 'package:flutter_application_1/feature/details/view/book_ditails.dart';
import 'package:flutter_application_1/feature/home/view/home_view.dart';
import 'package:flutter_application_1/feature/search/view/search_view.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/detailsBook',
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
