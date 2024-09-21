import 'package:aman_store2/core/widgets/custom_elevated_button.dart';
import 'package:aman_store2/features/location/data/models/location_model.dart';
import 'package:aman_store2/features/location/prsentation/views/widgets/edit_location_google_map.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/validations/regular_exceptions.dart';
import '../../../../../core/widgets/custom_text_form_failed.dart';
import '../../view_model/spicific_location_cubit/spicific_location_cubit.dart';

class SpicificLocationSucsess extends StatelessWidget {
  final LocationsModel location;
  const SpicificLocationSucsess({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SpicificLocationCubit>();
    // SpicificLocationCubit cubit = SpicificLocationCubit.get(context);
    return ListView(
      children: [
        SizedBox(
          height: 300.h,
          child: GoogleMap(
            onTap: (argument) {
              showBottomSheet(
                enableDrag: false,
                context: context,
                builder: (_) => const EditLocationGoogleMap(),
              );
              // print(argument);
            },
            markers: {
              Marker(
                markerId: const MarkerId('1'),
                position: cubit.latLng!,
              )
            },
            initialCameraPosition:
                CameraPosition(target: cubit.latLng!, zoom: 18),
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              CustomTextFormField(
                title: 'نوع *',
                validation: (val) {
                  return validations(value: val!, type: '');
                },
                isCommed: true,
                textFormController: cubit.type,
              ),
              CustomTextFormField(
                title: 'الــموقع *',
                validation: (val) {
                  return validations(value: val!, type: '');
                },
                isCommed: true,
                textFormController: cubit.name,
              ),
              CustomTextFormField(
                textFormController: cubit.street,
                title: 'الشارع *',
                isCommed: true,
                validation: (val) {
                  return validations(value: val!, type: '');
                },
              ),
              CustomTextFormField(
                textFormController: cubit.house,
                title: 'المنزل',
                isCommed: true,
                validation: (val) {
                  if (cubit.house.text.trim().isEmpty) {
                    return null;
                  }

                  return validations(value: val!, type: '');
                },
              ),
              CustomTextFormField(
                textFormController: cubit.room,
                title: 'رقم الغرفة',
                isCommed: true,
                validation: (val) {
                  if (cubit.room.text.trim().isEmpty) return null;
                  return validations(value: val!, type: '');
                },
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      radius: 8.r,
                      title: 'حفظ',
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Expanded(
                    child: CustomElevatedButton(
                      backgroundColor: Colors.red,
                      radius: 8.r,
                      title: 'حــذف',
                      onPressed: () {
                        cubit.deleteLocation();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
