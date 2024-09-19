import 'package:booly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.topLeft = const Radius.circular(0),
      this.topRight = const Radius.circular(0),
      this.bottomLeft = const Radius.circular(0),
      this.bottomRight = const Radius.circular(0),
      this.backgroundColor = const Color(0xffFFFFFF),
      this.textColor = const Color(0xFFFFFFFF), this.onPressed});

  final String text;
  final Radius topLeft;
  final Radius topRight;
  final Radius bottomLeft;
  final Radius bottomRight;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: bottomLeft,
                bottomRight: bottomRight,
                topLeft: topLeft,
                topRight: topRight,
              ),
            )),
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(fontWeight: FontWeight.w900, color: textColor),
        ),
      ),
    );
  }
}
