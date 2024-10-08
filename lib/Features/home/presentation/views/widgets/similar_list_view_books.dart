import 'package:booly_app/Features/home/presentation/manager/similar_books/similar_books_cubit.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:booly_app/core/widgets/custom_error_message.dart';
import 'package:booly_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
                  return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  );
                },
                itemCount: state.books.length),
          );
        }
        else if(state is SimilarBooksFailure){
          return CustomErrorMessage(errorMessage: state.errorMessage);
        }
        else{
          return const CustomLoadingIndicator();
        }

      },
    );
  }
}
