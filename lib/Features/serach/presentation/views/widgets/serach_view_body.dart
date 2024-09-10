import 'package:booly_app/Features/serach/presentation/views/widgets/custom_app_bar_serach_view.dart';
import 'package:booly_app/Features/serach/presentation/views/widgets/search_result.dart';
import 'package:booly_app/constants.dart';
import 'package:flutter/material.dart';

class SerachViewBody extends StatelessWidget {
  const SerachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: kPadding30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBarSearchView(),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Search Result",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        SerachViewResult(),
      ],
    );
  }
}
