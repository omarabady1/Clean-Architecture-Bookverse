import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FirstSlidingText extends StatelessWidget {
  const FirstSlidingText({super.key, required this.slidingAnimation1});

  final Animation<Offset> slidingAnimation1;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation1,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation1,
          child: const Text(
            'Bookverse',
            style: TextStyle(
              fontFamily: AssetsData.shareTech,
              fontSize: 32,
              color: Color(0xffc04a65),
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}

class SecondSlidingText extends StatelessWidget {
  const SecondSlidingText({super.key, required this.slidingAnimation2});

  final Animation<double> slidingAnimation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation2,
      builder: (context, _) {
        return ScaleTransition(
          scale: slidingAnimation2,
          child: const Text(
            'Read the Universe',
            style: TextStyle(fontFamily: AssetsData.shareTech, fontSize: 32),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
