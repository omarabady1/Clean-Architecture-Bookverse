import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(this.imgUrl, {super.key});

  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 75 / 112,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(8),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl:
              imgUrl ??
              'https://thumbs.dreamstime.com/b/grunge-blue-not-available-word-round-rubber-seal-stamp-white-background-162738148.jpg?w=768',
          placeholder: (context, _) => Center(
            child: CircularProgressIndicator(
              backgroundColor: Color(0xffd65158),
            ),
          ),
          errorWidget: (context, url, error) =>
              Center(child: Icon(Icons.error)),
        ),
      ),
    );
  }
}
