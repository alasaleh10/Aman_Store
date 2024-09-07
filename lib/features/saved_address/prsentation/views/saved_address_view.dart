import '../../../../core/utils/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_styles.dart';
import 'widgets/address_continer.dart';

class SavedAddressView extends StatelessWidget {
  const SavedAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'mySavedAddress'.tr(),
          style: AppStyle.textStyleSemiBold20,
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.h), child: const Divider()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return const AddressContiner();
              },
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * .05),
              child: DottedBorder(
                color: AppColors.kPrimColor,
                radius: const Radius.circular(30),
                dashPattern: const [20, 12],
                strokeWidth: 1,
                borderType: BorderType.RRect,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  // height: 51,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffFEF1E5),
                    borderRadius: BorderRadius.circular(30),
                    // border: Border.all(color: kPrimColor)
                  ),
                  child: Center(
                      child: Text('addNewAddress'.tr(),
                          style: AppStyle.textStyleRegular14
                              .copyWith(color: AppColors.kPrimColor)
                          //  Styls.textStyl14.copyWith(color: kPrimColor),
                          )),
                ),
              ),
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}
