import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/functions/show_snac_bar.dart';
import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/home/prsentation/view_model/home_cubit/home_cubit.dart';
import 'package:aman_store2/features/home/prsentation/view_model/home_cubit/home_state.dart';
import 'package:aman_store2/features/home/prsentation/views/widgets/home_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../drawer_pages/views/home_drwer.dart';
import 'widgets/custom_home_appbar.dart';
import 'widgets/home_search_continer.dart';
import 'widgets/home_sucsess.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: const HomeDrwer(),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            if (context.read<HomeCubit>().isSucsess == true) {
              context.read<HomeCubit>().getHome(isFromRefreshing: true);
            }
          },
          child: CustomScrollView(
            slivers: [
              const CustomHomeAppBar(),
              const HomeSearchContiner(),
              SliverToBoxAdapter(child: vSizedBox(16)),

              BlocConsumer<HomeCubit, HomeState>(
                buildWhen: (previous, current) => current is! Failure2,
                listener: (context, state) {
                  state.mapOrNull(
                    failure2: (value) {
                      showSnackBar(context, message: value.message);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const SliverToBoxAdapter(),
                    failure: (value) => SliverToBoxAdapter(
                      child: FailurePageView(
                        message: value.message,
                        onTap: () {
                          context.read<HomeCubit>().getHome();
                        },
                      ),
                    ),
                    loading: (value) => const HomeLoading(),
                    noInternet: (value) =>
                        SliverToBoxAdapter(child: NoInternetPage(onTap: () {
                      context.read<HomeCubit>().getHome();
                    })),
                    sucsess: (data) => HomeSucsess(data: data.homeModel),
                  );
                },
              ),

              // HomeSucsess(),
              // HomeLoading(),
              SliverToBoxAdapter(child: vSizedBox(26)),
            ],
          ),
        ),
      ),
    );
  }
}
