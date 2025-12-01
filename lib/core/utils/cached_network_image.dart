import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(this.imgUrl, {super.key});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        placeholder: (context, _) => Center(
          child: CircularProgressIndicator(backgroundColor: Color(0xffd65158)),
        ),
        errorWidget: (context, url, error) => Center(child: Icon(Icons.error)),
      ),
    );
  }
}
