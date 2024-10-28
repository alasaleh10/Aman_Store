import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../home_screen/view_model/home_screen_cuibt/home_screen_cubit.dart';
import '../view_model/search_order_cubit/search_order_cubit.dart';
import 'search_order_view.dart';
import 'widgets/orders_body_view.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              BlocProvider.of<HomeScreenCubit>(context).goLastPage();
            },
            icon: const Icon(Icons.arrow_back)),
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                isDismissible: false,
                enableDrag: false,
                isScrollControlled: true,
                context: context,
                builder: (_) => BlocProvider(
                  create: (context) => SearchOrderCubit(gitIt()),
                  child: Scaffold(
                    resizeToAvoidBottomInset: true,
                    appBar: customAppbar('بحث عن طلب', size: Size(0, 20.h)),
                    body: const SearchOrderView(),
                  ),
                ),
              );

              // showBottomSheet(
              //   enableDrag: false,
              //   context: context,
              //   builder: (_) => BlocProvider(
              //     create: (context) => SearchOrderCubit(
              //       gitIt(),
              //     ),
              //     child: Scaffold(
              //       resizeToAvoidBottomInset: true,
              //       appBar: customAppbar('بحث عن طلب', size: Size(0, 20.h)),
              //       body: const SearchOrderView(),
              //     ),
              //   ),
              // );
            },
            child: SvgPicture.asset(
              Assets.imagesSearchSVG,
              height: 30.h,
              width: 30.w,
            ),
          ),
          hSizedBox(8),
        ],
      ),
      body: const OrdersBodyView(),
    );
  }
}
