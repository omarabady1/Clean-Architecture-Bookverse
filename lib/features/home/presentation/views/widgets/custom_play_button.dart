import 'dart:ui';
import 'package:flutter/material.dart';

class CustomPlayButton extends StatelessWidget {
  const CustomPlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Material(
          color: Colors.white.withValues(
            alpha: 0.2,
          ), // transparent material for splash
          child: InkWell(
            splashColor: Colors.white.withValues(alpha: 0.1),
            highlightColor: Colors.white.withValues(alpha: 0.2),
            onTap: () {},
            child: SizedBox(
              width: 30,
              height: 30,
              child: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
