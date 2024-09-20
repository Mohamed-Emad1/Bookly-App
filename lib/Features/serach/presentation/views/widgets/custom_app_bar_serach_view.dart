import 'package:booly_app/Features/serach/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomAppBarSearchView extends StatelessWidget {
  const CustomAppBarSearchView({super.key, required this.searchController});
  final TextEditingController searchController;
  // final Function(String) onSearchSubmitted;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        CustomTextField(
          // onSearchSubmitted: onSearchSubmitted,
          searchController: searchController,
        ),
      ],
    );
  }
}
