import 'package:booly_app/Features/serach/presentation/manager/search_cubit/search_result_cubit.dart';
import 'package:booly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_message.dart';

class SerachViewResult extends StatelessWidget {
  const SerachViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  // child: BookListViewItem(
                  //   book:
                  // ),
                  child: Text("handle list here"),
                );
              },
              childCount: 10, // Adjust this count based on your list
            ),
          );
        } else if (state is SearchResultFailure) {
          return const CustomErrorMessage(
            errorMessage: "No results found",
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
