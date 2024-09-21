import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:aman_store2/features/favorite/views/widgets/favorite_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/favorite_cubit/favorite_cubit.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(gitIt())..getFavorite(),
      child: Scaffold(
        appBar: customAppbar('الــمفضلة'),
        body: const FavoriteViewBody(),
      ),
    );
  }
}
