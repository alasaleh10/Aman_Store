import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_faq_bottom_bar.dart';
import 'widgets/faq_questions_view_body.dart';

class QuesentaionView extends StatelessWidget {
  const QuesentaionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomFaqBottomBar(),
      appBar: customAppbar('الأسئــلة المتكررة'),
      body: const FaqQuestionsViewBody(),
    );
  }
}
