import 'package:booly_app/Features/home/presentation/views/widgets/custom_icon.dart';
import 'package:booly_app/core/utils/app_routes.dart';
import 'package:booly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          height: 30,
          AssetsData.logo,
        ),
        CustomIcon(
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.kSearchView);
            },
            icon: FontAwesomeIcons.magnifyingGlass),
      ],
    );
  }
}
