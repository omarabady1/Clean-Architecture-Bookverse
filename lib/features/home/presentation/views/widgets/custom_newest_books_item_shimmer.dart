import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewestBooksItemShimmer extends StatelessWidget {
  const NewestBooksItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade800,
        highlightColor: Colors.grey.shade700,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              // Book image placeholder
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.width * 0.28,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(width: 34),
              // Text placeholders
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title lines
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 18,
                    color: Colors.grey.shade900,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 14,
                    color: Colors.grey.shade900,
                  ),
                  const SizedBox(height: 8),
                  // Price and pages
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 14,
                        color: Colors.grey.shade900,
                      ),
                      const SizedBox(width: 40),
                      Container(
                        width: 60,
                        height: 14,
                        color: Colors.grey.shade900,
                      ),
                    ],
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