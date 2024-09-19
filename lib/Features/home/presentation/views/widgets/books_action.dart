import 'package:booly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:booly_app/core/utils/functions/launch_url.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: CustomButton(
              text: "Free",
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
              textColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async{
                
                  launchCustomUrl(context, bookModel.volumeInfo.previewLink);
                
              },
              text: getText(bookModel),
              backgroundColor: const Color(0xffEF8262),
              bottomRight: const Radius.circular(16),
              topRight: const Radius.circular(16),
            ),
          )
        ],
      ),
    );
  }
  
  String getText(bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not Found";
    } else {
      return "Preview Link";
    }
  }
}
