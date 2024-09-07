import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_styles.dart';
import '../../data/on_bording_list_items.dart';
import '../../view_model/on_bording_cuibt/on_bording_cubit.dart';
import 'on_bording_indecator.dart';
import 'skip_text.dart';

class OnBordingBodyView extends StatelessWidget {
  const OnBordingBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: BlocProvider.of<OnBordingCubit>(context).pageController,
      onPageChanged: (value) {
        context.read<OnBordingCubit>().onchangePage(value);
      },
      itemCount: onbordingItems.length,
      itemBuilder: (context, index) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 10),
              SkipText(
                  isActive: index == onbordingItems.length - 1 ? false : true),
              const SizedBox(height: 50),
              AspectRatio(
                aspectRatio: 2 / 2,
                child: Image.asset(onbordingItems[index].image),
              ),
              const SizedBox(height: 12),
              OnBordingIndecator(indecatorIndex: index),
              const SizedBox(height: 40),
              Text(
                onbordingItems[index].title,
                style: AppStyle.textStyleBold25,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),
              Text(onbordingItems[index].subTitle,
                  style: AppStyle.textStyleBold18
                      .copyWith(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center),
              const SizedBox(height: 35),
            ],
          ),
        );
      },
    );
  }
}
