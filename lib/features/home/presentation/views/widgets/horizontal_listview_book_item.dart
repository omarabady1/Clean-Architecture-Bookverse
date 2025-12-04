import 'package:bookverse/core/utils/cached_network_image.dart';
import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'custom_play_button.dart';

class HorizontalListBookItem extends StatelessWidget {
  const HorizontalListBookItem(this.book, {super.key});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CustomNetworkImage(book.thumbnailUrl),
        Padding(padding: const EdgeInsets.all(8.0), child: CustomPlayButton()),
      ],
    );
  }
}
