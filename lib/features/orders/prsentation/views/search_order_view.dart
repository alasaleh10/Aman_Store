import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/widgets/custom_text_form_failed.dart';
import 'package:aman_store2/core/widgets/erroe_stacke.dart';
import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/search_order_cubit/search_order_cubit.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/search_order_cubit/search_order_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/functions/is_number.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/widgets/loading_view_page.dart';
import '../../../../core/widgets/no_internet_page_view.dart';
import 'widgets/order_items.dart';

class SearchOrderView extends StatelessWidget {
  const SearchOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchOrderCubit>();
    return SingleChildScrollView(
      child: Column(
        children: [
          vSizedBox(20),
          CustomTextFormField(
            textInputType: TextInputType.number,
            textFormController: cubit.id,
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
            seffexIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  if (cubit.id.text.trim().isEmpty) {
                    showErrorStack(context, 'قم بكتابة رقم الطلب فضلا', null,
                        isUpdating: false);
                    return;
                  }
                  if (!isNumeric(cubit.id.text.trim())) {
                    showErrorStack(context, 'يجب ان يكون رقما', null,
                        isUpdating: false);

                    return;
                  }
                  cubit.searchOrder();
                },
                child: SvgPicture.asset(
                  Assets.imagesSearchSVG,
                  height: 25.h,
                  width: 25.w,
                ),
              ),
            ),
            title: 'بحث',
            isCommed: true,
          ),
          vSizedBox(20),
          BlocBuilder<SearchOrderCubit, SearchOrderState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: () => const LoadingViewPage(),
                error: (error) => FailurePageView(
                    message: error,
                    onTap: () {
                      context.read<SearchOrderCubit>().searchOrder();
                    }),
                noInternet: () => NoInternetPage(
                  onTap: () {
                    context.read<SearchOrderCubit>().searchOrder();
                  },
                ),
                sucsess: (order) => OrderItems(
                  order: order,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
