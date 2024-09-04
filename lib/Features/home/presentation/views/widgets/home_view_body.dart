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
        CustomAppBar()
      ],
    );
  }
}




