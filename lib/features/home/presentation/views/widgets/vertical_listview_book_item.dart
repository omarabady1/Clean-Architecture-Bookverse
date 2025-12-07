import 'package:bookverse/core/utils/app_router.dart';
import 'package:bookverse/core/utils/cached_network_image.dart';
import 'package:bookverse/core/utils/styles.dart';
import 'package:bookverse/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerticalListBookItem extends StatelessWidget {
  const VerticalListBookItem(this.book, {super.key});
  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: () {
          GoRouter.of(
            context,
          ).push(AppRouter.kBookDetailsViewPath, extra: book);
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
                  book.thumbnailUrl,
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
                      book.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.sectra20,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.author,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          book.previewUrl != '' ? 'Free Preview' : 'Not Available',
                          style: Styles.title18,
                        ),
                        //BookRating(book),
                        //The API doesn't have a book rating end point currently
                        Text(
                          '${book.pageCount} pages',
                          style: Styles.title12,
                        ),
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
