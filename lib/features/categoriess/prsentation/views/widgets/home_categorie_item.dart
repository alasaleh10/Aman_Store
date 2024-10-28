// import 'package:flutter/cupertino.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../core/utils/app_colors.dart';
// import '../../../../../core/utils/app_styles.dart';
// import '../../../data/models/all_categoriess_model.dart';

// class CategorieItem extends StatelessWidget {
//   final CategorieeModel categorieeModel;
//   const CategorieItem({super.key, required this.categorieeModel});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           clipBehavior: Clip.antiAlias,
//           height: 50.h,
//           width: 50.w,
//           padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//           decoration: const BoxDecoration(
//               color: AppColors.kPrimColor, shape: BoxShape.circle),
//           child: Image.network(
//             categorieeModel.image,
//             fit: BoxFit.cover,
//           ),
//         ),
//         const SizedBox(height: 10),
//         Text(
//           categorieeModel.name,
//           style: AppStyle.textStyleRegular14.copyWith(fontSize: 13.sp),
//         )
//       ],
//     );
//   }
// }
import 'package:aman_store2/core/routers/app_routers.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/cached_network_image_widget.dart';
import '../../../data/models/all_categoriess_model.dart';

class CategorieItem extends StatelessWidget {
  final CategorieeModel categorieeModel;
  const CategorieItem({super.key, required this.categorieeModel});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ZoomIn(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRouters.categorieeItemsView,
                      extra: [categorieeModel.id, categorieeModel.name]);
                },
                child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 70.h,
                    width: 70.w,
                    // padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                    decoration: const BoxDecoration(
                      color: AppColors.kPrimColor,
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        clipBehavior: Clip.antiAlias,
                        child: CachedImageWidget(
                          url: categorieeModel.image,
                        ))),
              ),
              SizedBox(height: 10.h),
              Text(
                categorieeModel.name,
                style: AppStyle.textStyleRegular14.copyWith(fontSize: 13.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
