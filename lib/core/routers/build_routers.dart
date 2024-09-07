
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'page_animation.dart';

GoRoute buildRoute(
  String path,
  Widget Function(BuildContext, GoRouterState) builder, {
  String? name,
  String? Function(BuildContext, GoRouterState)? redirect,
}) {
  return GoRoute(
    path: '/$path',
    name: name ?? path,
    pageBuilder: (context, state) =>
        pageAnimation(page: builder(context, state)),
    redirect: redirect,
  );
}
