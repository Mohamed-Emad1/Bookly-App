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
            // child: BookListViewItem(
            //   book:
            // ),
            child: Text("handle list here"),
          );
        },
        childCount: 10, // Adjust this count based on your list
      ),
    );
  }
}
