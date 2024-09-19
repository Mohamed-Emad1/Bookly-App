import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/data/repo/home_repo_implementaion.dart';
import 'package:booly_app/Features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:booly_app/Features/home/presentation/views/book_details_view.dart';
import 'package:booly_app/Features/home/presentation/views/home_view.dart';
import 'package:booly_app/Features/serach/presentation/views/search_view.dart';
import 'package:booly_app/Features/spalsh/presentation/views/spalsh_view.dart';
import 'package:booly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/SerachView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SpalshView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImplementaion>()
          ),
          child: BookDetailView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
