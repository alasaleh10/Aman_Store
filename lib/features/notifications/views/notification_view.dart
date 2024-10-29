import 'package:aman_store2/core/di/depencency_injection.dart';
import 'package:aman_store2/core/functions/app_sizedbox.dart';
import 'package:aman_store2/core/widgets/custom_appbar.dart';
import 'package:aman_store2/core/widgets/failure_page_view.dart';
import 'package:aman_store2/core/widgets/no_internet_page_view.dart';
import 'package:aman_store2/features/notifications/view_model/notification_cubit/notifications_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../location/prsentation/views/widgets/locations_loading.dart';
import '../view_model/notification_cubit/notifications_cubit.dart';
import 'widgets/notification_item.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsCubit(gitIt())..getNotifications(),
      child: Scaffold(
        appBar: customAppbar('الإشــعارات'),
        body: BlocBuilder<NotificationsCubit, NotificationsState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              error: (error) => FailurePageView(
                  message: error,
                  onTap: () {
                    context.read<NotificationsCubit>().getNotifications();
                  }),
              noInternet: () => NoInternetPage(
                onTap: () {
                  context.read<NotificationsCubit>().getNotifications();
                },
              ),
              loading: () => const LocationsLoading(),
              sucsess: (notifications) => ListView.separated(
                separatorBuilder: (_, i) => vSizedBox(10),
                itemCount: notifications.length,
                itemBuilder: (_, int index) {
                  return NotificationItem(
                    notificationModel: notifications[index],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
