import 'package:bookverse/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class CustomTransitions {
  static CustomTransitionPage<dynamic> fadeWithSlideUpTransition(
    GoRouterState state,
    Widget view,
  ) {
    return CustomTransitionPage(
      transitionDuration: kTransitionDuration,
      key: state.pageKey,
      child: view,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = Tween<Offset>(
          begin: const Offset(0, 0.2),
          end: Offset.zero,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut));
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(position: offsetAnimation, child: child),
        );
      },
    );
  }

  static CustomTransitionPage<dynamic> slidLeftTransition(
    GoRouterState state,
    Widget view,
  ) {
    return CustomTransitionPage(
      transitionDuration: kTransitionDuration,
      key: state.pageKey,
      child: view,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut));
        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}
