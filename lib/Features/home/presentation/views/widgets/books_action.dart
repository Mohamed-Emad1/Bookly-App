import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              text: "19.99€",
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
              textColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              text: "Free preview",
              backgroundColor: Color(0xffEF8262),
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          )
        ],
      ),
    );
  }
}
