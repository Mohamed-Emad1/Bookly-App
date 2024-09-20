import 'package:booly_app/Features/serach/data/repos/search_repo_impl.dart';
import 'package:booly_app/Features/serach/presentation/manager/search_cubit/search_result_cubit.dart';
import 'package:booly_app/Features/serach/presentation/views/widgets/serach_view_body.dart';
import 'package:booly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();

    // Trigger an initial search
    BlocProvider.of<SearchResultCubit>(context)
        .fetchFeaturedBooks(searchText: "Programming");
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // void _onSearchSubmitted(String searchText) {
  //   BlocProvider.of<SearchResultCubit>(context)
  //       .fetchFeaturedBooks(searchText: searchText);
  // }

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        body: SafeArea(
          child: SerachViewBody(
            searchController: _searchController,
            // onSearchSubmitted: _onSearchSubmitted,
          ),
          ),
    );
  }
}
