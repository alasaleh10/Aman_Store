import 'package:aman_store2/core/utils/app_assets.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/terms_list.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar('الشروط والأحكام'),
      body: ListView(
        children: [
          const AspectRatio(
            aspectRatio: 4 / 1,
            child: Image(
              image: AssetImage(Assets.imagesLogo),
            ),
          ),
          ...List.generate(
              termsList.length,
              (index) => Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: index == 0
                              ? Alignment.center
                              : AlignmentDirectional.centerStart,
                          child: Text(
                            termsList[index].title,
                            style: AppStyle.textStyleBold17
                                .copyWith(fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          termsList[index].subTitile,
                          style: AppStyle.textStyleRegular16,
                        ),
                      ],
                    ),
                  )),
          SizedBox(height: 5.h)
        ],
      ),
    );
  }
}
