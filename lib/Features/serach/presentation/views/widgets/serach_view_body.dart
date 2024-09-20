import 'package:booly_app/Features/serach/presentation/views/widgets/custom_app_bar_serach_view.dart';
import 'package:booly_app/Features/serach/presentation/views/widgets/search_result.dart';
import 'package:booly_app/constants.dart';
import 'package:flutter/material.dart';

class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key, required this.searchController});

  final TextEditingController searchController;
  // final Function(String) onSearchSubmitted;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: kPadding30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBarSearchView(
                  // onSearchSubmitted: onSearchSubmitted,
                  searchController: searchController,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Search Result",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(child: SerachViewResult()),
      ],
    );
  }
}
