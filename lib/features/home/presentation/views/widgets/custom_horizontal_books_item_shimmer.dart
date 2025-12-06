import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HorizontalListBookItemShimmer extends StatelessWidget {
  const HorizontalListBookItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade800,
      highlightColor: Colors.grey.shade700,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
