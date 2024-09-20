import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/widgets/custom_error_message.dart';

class CustomSearchItem extends StatelessWidget {
  const CustomSearchItem({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context, url, error) => const SizedBox(
              height: 50,
              child:  Column(
                children: [
                  Expanded(child: CustomErrorMessage(errorMessage: "Error in loading image")),
                  Icon(FontAwesomeIcons.fileExcel),
                ],
              ),
            ),
          )),
    );
  }
}
