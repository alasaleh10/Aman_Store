import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

pageAnimation({required Widget page}) {
  return CustomTransitionPage(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
      
      // SlideTransition(
      //   position: Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero)
      //       .animate(animation),
      //   child: child,
      // );
    },
  );
}
