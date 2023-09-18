// ignore_for_file: unused_element, unused_field

import 'package:flutter_application_1/core/utils/service_locator.dart';
import 'package:flutter_application_1/feature/details/manger/similar_books_cubit.dart';
import 'package:flutter_application_1/feature/details/view/book_ditails.dart';
import 'package:flutter_application_1/feature/home/models/book_models/book_models.dart';
import 'package:flutter_application_1/feature/home/models/repository/home_repo_impl.dart';
import 'package:flutter_application_1/feature/home/view/home_view.dart';
import 'package:flutter_application_1/feature/search/manger/search_cubit.dart';
import 'package:flutter_application_1/feature/search/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(bookModels: state.extra as BookModels),
        ),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => BlocProvider(
            create: (context) => SearchCubit(getIt.get<HomeRepoImpl>()),
            child: const SearchView()),
      )
    ],
  );
}
