import 'package:aman_store2/core/functions/get_app_size.dart';
import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/core/widgets/no_internet_stack.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/add_rating_cubit/add_rating_cubit.dart';
import 'package:aman_store2/features/orders/prsentation/view_model/add_rating_cubit/add_rating_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_loading_stack.dart';
import '../../../../../core/widgets/custom_text_form_failed.dart';
import '../../../../../core/widgets/erroe_stacke.dart';
import 'done_rating_continer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'feadback_column.dart';
import 'rating_faces_listile.dart';

class RatingOrderTryingBodyView extends StatelessWidget {
  const RatingOrderTryingBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: ListView(
        children: [
          ListTile(
            title: Text(
              'weHappyTodealing'.tr(),
              style: AppStyle.textStyleSemiBold23.copyWith(
                  color: const Color(0xff45495E), fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              'weWouldKnowEvaluation'.tr(),
              style: AppStyle.textStyleBold18
                  .copyWith(color: const Color(0xff45495E)),
              textAlign: TextAlign.center,
            ),
          ),
          const RatingFacesListTile(),
          SizedBox(height: 10.h),
          const FeadBackColumn(),
          SizedBox(height: 10.h),
          Text(
            'doYouHaveComment'.tr(),
            style: AppStyle.textStyleBold25.copyWith(
                color: const Color(0xff8B959E), fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          CustomTextFormField(
              maxLines: 4,
              isCommed: true,
              title: '',
              textFormController: context.read<AddRatingCubit>().commiet),
          SizedBox(height: 70.h),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.h, horizontal: getAppWidth(context) * .05),
            child: BlocListener<AddRatingCubit, AddRatingState>(
              listener: (context, state) {
                if (isDialogOpen(context)) {
                  context.pop();
                }
                state.whenOrNull(
                  failure: (message) => showErrorStack(context, message, () {
                    context.read<AddRatingCubit>().addRating();
                  }),
                  loading: () => showLoadingStack(context),
                  noInternet: () => showNoInternet(context, () {
                    context.read<AddRatingCubit>().addRating();
                  }),
                  sucsess: (doneModel) {
                     showModalBottomSheet(
                      isDismissible: false,
                      isScrollControlled: true,
                      context: context,
                      builder: (_) => const DoneRatingContiner());
                    showSnackBar(context,
                        message: doneModel.message, isError: false);
                  },
                );
              },
              child: CustomElevatedButton(
                title: 'send'.tr(),
                onPressed: () {
                  context.read<AddRatingCubit>().addRating();
                 
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
