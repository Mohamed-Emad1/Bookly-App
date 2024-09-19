import 'package:booly_app/Features/serach/presentation/manager/search_cubit/search_result_cubit.dart';
import 'package:booly_app/Features/serach/presentation/views/widgets/serach_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    BlocProvider.of<SearchResultCubit>(context)
        .fetchFeaturedBooks(searchText: "Programming");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SerachViewBody()),
    );
  }
}
