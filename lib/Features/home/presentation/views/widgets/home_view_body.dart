import 'package:booly_app/Features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:booly_app/Features/home/presentation/views/widgets/cutom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 70,
        ),
        CustomAppBar(),
        SizedBox(
          height: 30,
        ),
        FeaturedBoxListView()
      ],
    );
  }
}

class FeaturedBoxListView extends StatelessWidget {
  const FeaturedBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FeaturedListViewItem(),
            );
          },
          itemCount: 5),
    );
  }
}
