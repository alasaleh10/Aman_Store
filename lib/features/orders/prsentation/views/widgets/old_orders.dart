import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/previous_orders_cubit/previous_orders_cubit.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/previous_orders_cubit/previous_orders_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'order_items.dart';
import 'order_list_view_loading_shimmar.dart';

class OldOrders extends StatelessWidget {
  const OldOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreviousOrdersCubit, PreviousOrdersState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          loading: (value) => const OrdersLoading(),
          noInternet: (value) => NoInternetPage(onTap: () {
            context.read<PreviousOrdersCubit>().getPreviousOrders();
          }),
          failure: (value) => FailurePageView(
              message: value.error,
              onTap: () {
                context.read<PreviousOrdersCubit>().getPreviousOrders();
              }),
          success: (data) => RefreshIndicator(
            onRefresh: () async {
              context
                  .read<PreviousOrdersCubit>()
                  .getPreviousOrders(isFromRefresh: true);
            },
            child: ListView.builder(
              itemCount: data.ordersModel.order.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: OrderItems(
                      order: data.ordersModel.order[index],
                    ));
              },
            ),
          ),
        );
      },
    );
  }
}
