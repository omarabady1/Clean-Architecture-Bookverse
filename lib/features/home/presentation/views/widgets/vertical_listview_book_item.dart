import 'package:bookverse/core/utils/app_router.dart';
import 'package:bookverse/core/utils/cached_network_image.dart';
import 'package:bookverse/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerticalListBookItem extends StatelessWidget {
  const VerticalListBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsViewPath);
        },
        splashColor: Colors.white.withValues(alpha: 0.1),
        highlightColor: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: CustomNetworkImage(
                  'https://books.google.com/books/content?id=etukl7GfrxQC&printsec=frontcover&img=1&zoom=2&source=gbs_api',
                ),
              ),
              SizedBox(width: 34),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.sectra20,
                    ),
                  ),
                  Text('J.K. Rowling', style: Styles.title12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('19.99\$', style: Styles.sectra20),
                        BookRating(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Color(0xffFFD700), size: 18),
        Text(' 4.8', style: Styles.sectra16),
        SizedBox(width: 6),
        Text('(2390)', style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}
