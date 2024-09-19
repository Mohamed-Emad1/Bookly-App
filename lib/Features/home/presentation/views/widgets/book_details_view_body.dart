import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/similar_list_view_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustmBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimilarBookDetailsSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
