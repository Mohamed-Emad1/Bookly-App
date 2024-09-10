import 'package:booly_app/Features/serach/presentation/views/widgets/custom_app_bar_serach_view.dart';
import 'package:flutter/material.dart';

class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBarSearchView(),
      ],
    );
  }
}
