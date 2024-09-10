import 'package:booly_app/Features/home/presentation/views/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustmBookDetailsAppBar extends StatelessWidget {
  const CustmBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIcon(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icons.close),
        CustomIcon(onPressed: () {}, icon: Icons.shopping_cart_outlined)
      ],
    );
  }
}
