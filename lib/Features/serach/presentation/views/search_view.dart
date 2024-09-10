import 'package:booly_app/Features/serach/presentation/views/widgets/serach_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SerachViewBody()),
    );
  }
}