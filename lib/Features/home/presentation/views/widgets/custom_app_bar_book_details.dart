import 'package:booly_app/Features/home/presentation/views/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustmBookDetailsAppBar extends StatelessWidget {
  const CustmBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIcon(onPressed: () {}, icon: Icons.close),
        CustomIcon(onPressed: () {}, icon: Icons.shopping_cart_outlined)
      ],
    );
  }
}
