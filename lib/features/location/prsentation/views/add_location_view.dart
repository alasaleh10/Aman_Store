import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/add_location_cuibt/add_location_cubit.dart';
import 'widgets/add_location_body.dart';

class AddLocationView extends StatelessWidget {
  final int index;
  const AddLocationView({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddLocationCubit()..getCurrentLocation(),
      child:  Scaffold(
        body: SafeArea(
          child: AddLocationBodyView(
            index: index,
          ),
        ),
      ),
    );
  }
}
