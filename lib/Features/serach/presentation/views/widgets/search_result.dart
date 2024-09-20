import 'package:booly_app/Features/serach/presentation/manager/search_cubit/search_result_cubit.dart';
import 'package:booly_app/Features/serach/presentation/views/widgets/custom_book_list_view_item.dart';
import 'package:booly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_message.dart';

class SerachViewResult extends StatelessWidget {
  const SerachViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccess) {
          
          return ListView.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: SearchListViewItem(book: state.books[index]),
              );
            },
          );
          
        } else if (state is SearchResultFailure) {
          return const Center(
            child: CustomErrorMessage(
              errorMessage: "No results found",
            ),
          );
        } else {
          return const Center(child: CustomLoadingIndicator());
        }
      },
      listener: (BuildContext context, SearchResultState state) {
        if (state is SearchResultSuccess) {
          print("lister");
        }
      },
    );
  }
}
