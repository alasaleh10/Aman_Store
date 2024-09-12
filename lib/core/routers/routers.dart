import 'package:aman_store2/core/helper/cached_helper.dart';
import 'package:aman_store2/core/helper/secure_storage.dart';
import 'package:aman_store2/core/utils/app_constsans.dart';
import 'package:aman_store2/features/saved_address/prsentation/views/saved_address_view.dart';
import 'package:aman_store2/features/orders/prsentation/views/rating_order_trying_view.dart';
import 'package:aman_store2/features/my_account/prsentation/views/edit_my_data_view.dart';
import 'package:aman_store2/features/orders/prsentation/views/follow_order_view.dart';
import 'package:aman_store2/features/add_location/prsentation/views/add_location_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/cheek_email_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/confirem_email_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/login_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/rest_password_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/signup_view.dart';
import 'package:aman_store2/features/home/prsentation/views/home_all_categorisess.dart';
import 'package:aman_store2/features/home_screen/views/home_screen.dart';
import 'package:aman_store2/features/on_bording/views/on_bording_view.dart';
import 'package:aman_store2/features/splash_screen/views/splash_screen_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/prsentation/views/home_new_aman_view.dart';
import 'app_routers.dart';
import 'build_routers.dart';
import 'page_animation.dart';

abstract class Routers {
  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: AppRouters.splashView,
        pageBuilder: (context, state) =>
            pageAnimation(page: const SplashScreenView()),
      ),
      // buildRoute(
      //     AppRouters.splashView, (context, state) => const SplashScreenView()),
      GoRoute(
        redirect: (context, state) async {
          // if (await SecureStorage.readData(key: AppConstants.token) != null) {
          //   return '/${AppRouters.homeScreenView}';
          // }
          if (CacheHelper.getData(key: AppConstants.onBording) == true) {
            return '/${AppRouters.loginView}';
          }

          return null;
        },
        name: AppRouters.onBordingView,
        path: '/${AppRouters.onBordingView}',
        pageBuilder: (context, state) =>
            pageAnimation(page: const OnBordingView()),
      ),

      buildRoute(AppRouters.loginView, (context, state) => const LoginView()),
      buildRoute(AppRouters.signupView, (context, state) => const SignUpView()),
      buildRoute(AppRouters.homeScreenView,
          (context, state) => const HomeScreenView()),
      buildRoute(AppRouters.confirmEmailView,
          (context, state) => ConfirmEmailView(data: state.extra as List)),
      buildRoute(AppRouters.cheekEmailView,
          (context, state) => const CheekEmailView()),
      buildRoute(AppRouters.restPasswordView,
          (context, state) =>  RestPasswordView(
            email: state.extra as String,
          )),
      buildRoute(AppRouters.addLocationView,
          (context, state) => AddLocationView(index: state.extra as int)),
      buildRoute(
          AppRouters.homeAmanView, (context, state) => const HomeNewAmanView()),
      buildRoute(AppRouters.homeAllCategorisesView,
          (context, state) => const HomeAllCategorisess()),
      buildRoute(AppRouters.editMyDataView,
          (context, state) => const EditMyDataView()),
      buildRoute(AppRouters.followOrderView,
          (context, state) => const FollowOrderView()),
      buildRoute(AppRouters.ratingOrderTryingView,
          (context, state) => const RatingOrderTryingView()),
      buildRoute(AppRouters.savedAddressView,
          (context, state) => const SavedAddressView()),
    ],
  );
}
