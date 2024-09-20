import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../manager/search_cubit/search_result_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.searchController});
  final TextEditingController searchController;
  // final Function(String) onSearchSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      onSubmitted: (text) {
       
        // onSearchSubmitted(text);
        BlocProvider.of<SearchResultCubit>(context)
            .fetchFeaturedBooks(searchText: text);
      },
      decoration: InputDecoration(
        enabledBorder: outLineBorder(),
        focusedBorder: outLineBorder(),
        hintText: 'Serach',
        suffixIcon: const Opacity(
          opacity: 0.8,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
