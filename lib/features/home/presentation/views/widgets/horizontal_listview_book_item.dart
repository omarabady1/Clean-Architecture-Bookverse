import 'package:bookverse/core/utils/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'custom_play_button.dart';

class HorizontalListBookItem extends StatelessWidget {
  const HorizontalListBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CustomNetworkImage(
          'https://books.google.com/books/content?id=etukl7GfrxQC&printsec=frontcover&img=1&zoom=4&source=gbs_api',
        ),
        Padding(padding: const EdgeInsets.all(8.0), child: CustomPlayButton()),
      ],
    );
  }
}
