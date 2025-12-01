import 'package:flutter/material.dart';

import '../../../../../core/utils/cached_network_image.dart';

class RecommendedBooksItem extends StatelessWidget {
  const RecommendedBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      'https://books.google.com/books/content?id=etukl7GfrxQC&printsec=frontcover&img=1&zoom=2&source=gbs_api',
    );
  }
}
