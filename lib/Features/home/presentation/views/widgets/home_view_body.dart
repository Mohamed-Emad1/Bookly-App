import 'package:booly_app/Features/home/presentation/views/widgets/cutom_app_bar.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
          ),
          CustomAppBar(),
          SizedBox(
            height: 30,
          ),
          FeaturedBoxListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            "Best Seller",
            style: Styles.textMedium,
          ),
        ],
      ),
    );
  }
}
