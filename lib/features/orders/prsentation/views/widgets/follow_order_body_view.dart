import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/order_detils_cubit/order_detils_cubit.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/order_detils_cubit/order_detils_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_detils_loading.dart';
import 'order_detils_sucsess_widget.dart';

class FollowOrderBodyView extends StatelessWidget {
  const FollowOrderBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocBuilder<OrderDetilsCubit, OrderDetilsState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const SizedBox(),
              loading: (value) => const OrderDetilsLoading(),
              noInternet: (value) => NoInternetPage(onTap: () {
                context.read<OrderDetilsCubit>().getOrderDetils();
              }),
              failure: (value) => FailurePageView(
                  message: value.error,
                  onTap: () {
                    context.read<OrderDetilsCubit>().getOrderDetils();
                  }),
              sucsess: (data) => OrderDetilsSucsessWidget(
                data: data.orderDetilsModel,
              ),
            );
          },
        ));
  }
}
