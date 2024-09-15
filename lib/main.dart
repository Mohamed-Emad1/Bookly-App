import 'package:booly_app/Features/home/data/repo/home_repo_implementaion.dart';
import 'package:booly_app/Features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:booly_app/Features/home/presentation/manager/newest%20books/newest_books_cubit.dart';
import 'package:booly_app/constants.dart';
import 'package:booly_app/core/utils/app_routes.dart';
import 'package:booly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImplementaion>(),)..fetchFeaturedBooks(),
        ),

        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImplementaion>(),)..fetchNewestBooks(),
          child: Container(),
        )
      ],
      child: MaterialApp.router(
        title: 'Bookly',
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutes.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
