import 'package:booly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/cutom_app_bar.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:booly_app/constants.dart';
import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: kPadding30,
                child: CustomAppBar(),
              ),
              SizedBox(
                height: 30,
              ),
              FeaturedBoxListView(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: kPadding30,
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: kPadding30,
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
