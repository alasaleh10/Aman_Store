import 'package:aman_store2/features/orders/prsentation/view_model/add_rating_cubit/add_rating_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_styles.dart';

import 'rating_face.dart';

class RatingFacesListTile extends StatefulWidget {
  const RatingFacesListTile({super.key});

  @override
  State<RatingFacesListTile> createState() => _RatingFacesListTileState();
}

class _RatingFacesListTileState extends State<RatingFacesListTile> {
  List<IconData> icons = [
    Icons.sentiment_very_dissatisfied_outlined,
    Icons.sentiment_very_dissatisfied,
    Icons.sentiment_satisfied_alt,
    Icons.mood,
  ];
  bool animat = true;
  @override
  Widget build(BuildContext context) {
    final cuibt = BlocProvider.of<AddRatingCubit>(context);

    return ListTile(
        // minVerticalPadding: 15,
        title:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  icons.length,
                  (index) => RatingFace(
                        animate: index == cuibt.rating ? animat : true,
                        onTap: () {
                          context.read<AddRatingCubit>().rating = index;
                          changeAnimat();
                        },
                        isActive: cuibt.rating == index,
                        icon: icons[index],
                      )),
            ),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'whatDoYouThinkUs'.tr(),
            style: AppStyle.textStyleBold25.copyWith(
                color: const Color(0xff8B959E), fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
        ));
  }

  changeAnimat() {
    animat = false;
    setState(() {});

    Future.delayed(const Duration(milliseconds: 800), () {
      animat = true;
      setState(() {});
    });
  }
}
