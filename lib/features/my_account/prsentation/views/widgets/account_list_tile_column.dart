import 'package:aman_store2/core/helper/secure_storage.dart';

import '../../../../../core/routers/app_routers.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_assets.dart';
import 'account_custom_list_tile.dart';

class AccountListTileColumn extends StatelessWidget {
  const AccountListTileColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AccountCustomListTile(
            title: 'mySavedAddress'.tr(),
            image: Assets.imagesLocation2,
            onTap: () {
              context.pushNamed(AppRouters.savedAddressView);
            }),
        AccountCustomListTile(
            title: 'paymentMethods'.tr(),
            image: Assets.imagesPaymentMthods,
            onTap: () {}),
        AccountCustomListTile(
            title: 'faviorte'.tr(),
            image: Assets.imagesFaviorte,
            onTap: () {
              context.pushNamed(AppRouters.favoriteView);
            }),
        AccountCustomListTile(
            title: 'technicalSupport'.tr(),
            image: Assets.imagesSupport,
            onTap: () {
              context.pushNamed(AppRouters.technicalSupportView);
            }),
        AccountCustomListTile(
            title: 'frequentyQuestions'.tr(),
            image: Assets.imagesQuestions,
            onTap: () {
              context.pushNamed(AppRouters.questionsView);
            }),
        AccountCustomListTile(
            title: 'logOut'.tr(),
            image: Assets.imagesLogout,
            onTap: () async {
              await SecureStorage.delete(key: 'token');
              // ignore: use_build_context_synchronously
              context.goNamed(AppRouters.loginView);
            }),
        const SizedBox(height: 15)
      ],
    );
  }
}
