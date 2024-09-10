import 'package:booly_app/Features/serach/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomAppBarSearchView extends StatelessWidget {
  const CustomAppBarSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        CustomTextField(),
      ],
    );
  }
}
