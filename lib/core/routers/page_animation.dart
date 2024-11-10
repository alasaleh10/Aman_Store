import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

pageAnimation({required Widget page}) {
  return CustomTransitionPage(
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(scale: animation, child: child);
    },
  );
}
