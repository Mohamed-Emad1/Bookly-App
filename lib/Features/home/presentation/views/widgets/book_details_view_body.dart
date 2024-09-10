import 'package:booly_app/Features/home/presentation/views/widgets/book_details_section.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/similar_list_view_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustmBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBookDetailsSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
