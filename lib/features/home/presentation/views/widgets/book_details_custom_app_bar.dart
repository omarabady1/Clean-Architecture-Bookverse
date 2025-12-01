import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsCustomAppBar extends StatelessWidget {
  const BookDetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 16, right: 14, left: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.close),
            color: Color(0xffc04a65),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
            color: Color(0xfffc931c),
          ),
        ],
      ),
    );
  }
}
