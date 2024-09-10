import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: outLineBorder(),
        focusedBorder: outLineBorder(),
        hintText: 'Serach',
        suffixIcon: const Opacity(
          opacity: 0.8,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outLineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
