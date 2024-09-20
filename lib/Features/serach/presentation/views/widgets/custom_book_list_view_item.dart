import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/Features/serach/presentation/views/widgets/cutom_search_item.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/book_rating.dart';

class SearchListViewItem extends StatelessWidget {
  const SearchListViewItem({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          CustomSearchItem(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      book.volumeInfo.title!,
                      // "Harry Potter \nand the Goblet of Fire",
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSpectraFine),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo.authors?[0] ?? "No author",
                    // "J.K. Rowling",
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xff707070),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
