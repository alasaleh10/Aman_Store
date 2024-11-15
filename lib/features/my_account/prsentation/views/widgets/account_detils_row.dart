import 'package:aman_store2/features/my_account/prsentation/view_model/my_account_cubit/my_account_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../auth/data/model/user_model.dart';
import 'account_image_stack.dart';

class AccountDetilsRow extends StatelessWidget {
  final UserModel user;
  const AccountDetilsRow({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          AccountImageStack(
              image: user.user.image,
              onTap: () {
                context.read<MyAccountCubit>().chooseImage();
              }),
          const SizedBox(width: 20),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.user.firstName} ${user.user.lastName ?? ''}',
                style: AppStyle.textStyleSemiBold20,
              ),
              Text(
                user.user.email,
                style: AppStyle.textStyleRegular16.copyWith(
                  color: const Color(0xffCACACA),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
