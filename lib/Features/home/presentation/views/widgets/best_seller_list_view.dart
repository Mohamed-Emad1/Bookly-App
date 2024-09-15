import 'package:booly_app/Features/home/presentation/manager/newest%20books/newest_books_cubit.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booly_app/core/widgets/custom_error_message.dart';
import 'package:booly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.newestBooks.length,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  book: state.newestBooks[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return  CustomErrorMessage(
            errorMessage: state.errorMessage,
          );
        }
        else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
