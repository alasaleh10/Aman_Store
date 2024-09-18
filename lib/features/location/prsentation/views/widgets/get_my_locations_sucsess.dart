import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/models/list_locations_model.dart';
import 'add_new_location_continer.dart';
import 'address_continer.dart';

class MyLocationsSucsessWidget extends StatelessWidget {
  final ListLocationsModel locations;
  const MyLocationsSucsessWidget({super.key, required this.locations});

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      child: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemCount: locations.locations.length,
            itemBuilder: (BuildContext context, int index) {
              return AddressContiner(
                location: locations.locations[index],
              );
            },
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 25.h),
          ),
          const SliverToBoxAdapter(
            child: AddNewLocationContiner(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 25.h)),
        ],
      ),
    );
  }
}
