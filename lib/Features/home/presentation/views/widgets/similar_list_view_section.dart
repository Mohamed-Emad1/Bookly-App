import 'package:booly_app/Features/home/presentation/views/widgets/similar_list_view_books.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBookDetailsSection extends StatelessWidget {
  const SimilarBookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
