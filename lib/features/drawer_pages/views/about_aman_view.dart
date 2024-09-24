import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/functions/app_sizedbox.dart';
import '../../../core/utils/app_assets.dart';

class AboutAmanView extends StatelessWidget {
  const AboutAmanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        'عن أمان',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const AspectRatio(
                aspectRatio: 3 / 1,
                child: Image(
                  image: AssetImage(Assets.imagesAmanLogo),
                ),
              ),
              vSizedBox(10),
              Text(
                '''شركة أمان تكنولوجي لحلول تقنية المعلومات هي شركة متخصصة في تقديم حلول تقنية مبتكرة للشركات والأفراد. تعمل الشركة على تطوير البرمجيات وتوفير حلول متكاملة في مجالات مثل التجارة الإلكترونية، البنية التحتية التقنية، تطوير التطبيقات، إدارة قواعد البيانات، وخدمات الحوسبة السحابية. تهدف أمان تكنولوجي إلى تمكين العملاء من تحقيق أهدافهم التقنية من خلال تقديم خدمات مخصصة وذات جودة عالية.''',
                style: AppStyle.textStyleRegular16.copyWith(height: 2.0),
              ),
              vSizedBox(60),
              SizedBox(
                height: 50.h,
                width: MediaQuery.of(context).size.width * .8,
                child: const Image(
                  image: AssetImage(Assets.imagesAmanFooter1),
                  fit: BoxFit.fill,
                ),
              ),
              vSizedBox(20),
              SizedBox(
                height: 50.h,
                width: MediaQuery.of(context).size.width * .8,
                child: const Image(
                  image: AssetImage(Assets.imagesAmanFooter2),
                  // fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
