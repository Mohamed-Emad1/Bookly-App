import 'package:booly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SerachViewResult extends StatelessWidget {
  const SerachViewResult({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: BookListViewItem(),
          );
        },
        childCount: 10, // Adjust this count based on your list
      ),
    );
  }
}
