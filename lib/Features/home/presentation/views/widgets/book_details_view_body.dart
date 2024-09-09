import 'package:booly_app/Features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/custom_book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustmBookDetailsAppBar(),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: const CustomBookImage()),
        ],
      ),
    );
  }
}
