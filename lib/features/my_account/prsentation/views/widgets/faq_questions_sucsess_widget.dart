import 'package:aman_store2/core/utils/app_colors.dart';
import 'package:aman_store2/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:aman_store2/features/my_account/data/models/faq_questions_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/faq_questions_cubit/faq_qusetions_cubit.dart';

class FaqQuestionsSucsessWidget extends StatefulWidget {
  final List<FaqQuestionModel> questions;
  const FaqQuestionsSucsessWidget({super.key, required this.questions});

  @override
  State<FaqQuestionsSucsessWidget> createState() =>
      _FaqQuestionsSucsessWidgetState();
}

class _FaqQuestionsSucsessWidgetState extends State<FaqQuestionsSucsessWidget> {
  int? _expandedIndex;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.pixels ==
                notification.metrics.maxScrollExtent &&
            notification is ScrollUpdateNotification) {
          
          context
              .read<FaqQusetionsCubit>()
              .getFaqQusetions(isFrompagination: true);
        }

        return true;
      },
      child: SingleChildScrollView(
        child: ExpansionPanelList(
          expandIconColor: AppColors.kPrimColor,
          elevation: 4,
          expansionCallback: (int panelIndex, bool isExpanded) {
            setState(() {
              if (_expandedIndex == panelIndex) {
                _expandedIndex = null;
                return;
              }
              _expandedIndex = panelIndex;
            });
          },
          children: List.generate(
            widget.questions.length,
            (index) => ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(
                    widget.questions[index].question,
                    style: AppStyle.textStyleRegular16
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                );
              },
              body: ListTile(
                title: Text(
                  widget.questions[index].answer,
                  style: AppStyle.textStyleRegular14,
                ),
              ),
              isExpanded: _expandedIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
