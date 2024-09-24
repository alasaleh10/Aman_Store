import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/utils/app_constsans.dart';
import 'package:aman_store2/features/categoriess/prsentation/views/categoriee_items_view.dart';
import 'package:aman_store2/features/drawer_pages/views/about_aman_view.dart';
import 'package:aman_store2/features/drawer_pages/views/terms_conditions_view.dart';
import 'package:aman_store2/features/favorite/views/favorite_view.dart';
import 'package:aman_store2/features/location/data/models/add_location_model.dart';
import 'package:aman_store2/features/location/prsentation/views/confirem_location_view.dart';
import 'package:aman_store2/features/location/prsentation/views/edit_address_view.dart';
import 'package:aman_store2/features/location/prsentation/views/saved_address_view.dart';
import 'package:aman_store2/features/my_account/prsentation/view_model/faq_questions_cubit/faq_qusetions_cubit.dart';
import 'package:aman_store2/features/my_account/prsentation/views/questions_view.dart';
import 'package:aman_store2/features/my_account/prsentation/views/technical_support_view.dart';
import 'package:aman_store2/features/orders/prsentation/views/rating_order_trying_view.dart';
import 'package:aman_store2/features/my_account/prsentation/views/edit_my_data_view.dart';
import 'package:aman_store2/features/orders/prsentation/views/follow_order_view.dart';
import 'package:aman_store2/features/location/prsentation/views/add_location_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/cheek_email_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/confirem_email_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/login_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/rest_password_view.dart';
import 'package:aman_store2/features/auth/prsentation/views/signup_view.dart';
import 'package:aman_store2/features/categoriess/prsentation/views/home_all_categorisess.dart';
import 'package:aman_store2/features/home_screen/views/home_screen.dart';
import 'package:aman_store2/features/on_bording/views/on_bording_view.dart';
import 'package:aman_store2/features/splash_screen/views/splash_screen_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/prsentation/views/home_new_aman_view.dart';
import '../../features/my_account/prsentation/view_model/technical_support_cubit/technical_support_cubit.dart';
import '../helper/cached_helper.dart';
import '../helper/secure_storage.dart';
import 'app_routers.dart';
import 'build_routers.dart';
import 'page_animation.dart';

abstract class Routers {
  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) =>
            pageAnimation(page: const SplashScreenView()),
      ),

      // buildRoute(
      //     AppRouters.splashView, (context, state) => const SplashScreenView()),
      GoRoute(
        redirect: (context, state) async {
          if (await SecureStorage.readData(key: AppConstants.token) != null) {
            return '/${AppRouters.homeScreenView}';
          }
          if (await CacheHelper.getData(key: AppConstants.onBording) == true) {
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
      buildRoute(
          AppRouters.restPasswordView,
          (context, state) => RestPasswordView(
                email: state.extra as String,
              )),
      buildRoute(AppRouters.addLocationView,
          (context, state) => AddLocationView(index: state.extra as int)),

      buildRoute(
          AppRouters.homeAmanView, (context, state) => const HomeNewAmanView()),
      buildRoute(AppRouters.homeAllCategorisesView,
          (context, state) => const HomeAllCategorisess()),
      buildRoute(
          AppRouters.editMyDataView,
          (context, state) => EditMyDataView(
                data: state.extra as List,
              )),
      buildRoute(AppRouters.followOrderView,
          (context, state) => const FollowOrderView()),
      buildRoute(AppRouters.ratingOrderTryingView,
          (context, state) => const RatingOrderTryingView()),
      buildRoute(AppRouters.savedAddressView,
          (context, state) => const SavedAddressView()),
      buildRoute(
          AppRouters.confirmLocationView,
          (context, state) => ConfirmLocationView(
              addLocationModel: state.extra as AddLocationModel)),
      buildRoute(AppRouters.editAddressView,
          (context, state) => EditAddressView(data: state.extra as List)),
      buildRoute(AppRouters.categorieeItemsView,
          (context, state) => CategorieeItemsView(data: state.extra as List)),
      buildRoute(
          AppRouters.favoriteView, (context, state) => const FavoriteView()),
      buildRoute(AppRouters.termsAndConditions,
          (context, state) => const TermsAndConditions()),
      buildRoute(
          AppRouters.aboutAmanView, (context, state) => const AboutAmanView()),
      buildRoute(
        AppRouters.technicalSupportView,
        (context, state) => BlocProvider(
          create: (context) => TechnicalSupportCubit(gitIt()),
          child: const TechnicalSupportView(),
        ),
      ),
         buildRoute(
          AppRouters.questionsView, (context, state) =>  BlocProvider(
            create: (context) => FaqQusetionsCubit(gitIt())..getFaqQusetions(),
            child: const QuesentaionView()),),
    ],
  );
}
