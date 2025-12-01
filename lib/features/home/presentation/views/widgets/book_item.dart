import 'package:flutter/material.dart';
import 'custom_play_button.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset('assets/images/book_cover.png'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomPlayButton(),
        ),
      ],
    );
  }
}
