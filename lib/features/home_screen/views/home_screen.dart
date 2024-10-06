import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/my_account_cubit/my_account_cubit.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/current_orders_cubit/current_orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../orders/prsentation/view_model/orders_cuibt/orders_cubit.dart';
import '../../orders/prsentation/view_model/previous_orders_cubit/previous_orders_cubit.dart';
import '../view_model/home_screen_cuibt/home_screen_cubit.dart';
import 'widgets/custom_bottom_navigation_bar.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OrdersCubit(),
          ),
          BlocProvider(
            create: (context) => MyAccountCubit(gitIt())..getMyAccount(),
          ),
          BlocProvider(
            create: (context) =>
                PreviousOrdersCubit(gitIt())..getPreviousOrders(),
          ),
          BlocProvider(
            create: (context) =>
                CurrentOrdersCubit(gitIt())..getMyCurrentOrders(),
          ),
        ],
        child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
            final cuibt = BlocProvider.of<HomeScreenCubit>(context);
            return Scaffold(
                bottomNavigationBar: const CustomBottomNavigationBar(),
                body: cuibt.pages().elementAt(cuibt.index));
          },
        ));
  }
}
