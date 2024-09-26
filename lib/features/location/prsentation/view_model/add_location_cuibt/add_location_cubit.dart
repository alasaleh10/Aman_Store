import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../../core/helper/location_helper.dart';
import 'add_location_state.dart';

class AddLocationCubit extends Cubit<AddLocationState> {
  AddLocationCubit() : super(const AddLocationState.initial());
  GoogleMapController? googleMapController;
  LocationService servess = LocationService();
  String? myCurrentLocation;
  Set<Marker> markers = {};
  getCurrentLocation() async {
    emit(const AddLocationState.loading());
    if (!await servess.cheekLocationPermision()) {
      emit(const AddLocationState.noPermision());
      return;
    }
    if (!await servess.cheekLocationServess()) {
      emit(const AddLocationState.noLocation());
      return;
    }

    var location = await servess.getLocation();

    if (location.latitude == null && location.longitude == null) {
      emit(const AddLocationState.failure('تعذر الحصول علئ الموقع'));
    } else {
      List<Placemark> placemarks = await placemarkFromCoordinates(
          location.latitude!, location.longitude!);
      googleMapController?.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(location.latitude!, location.longitude!),
              zoom: 19)));
      myCurrentLocation = placemarks[0].locality;
      markers = {
        Marker(
            markerId: const MarkerId('1'),
            position: LatLng(location.latitude!, location.longitude!))
      };
      emit(AddLocationState.sucsess(location.latitude.toString(),
          location.longitude.toString(), myCurrentLocation!));
    }

    // CacheHelper.saveData(key: 'location', value: myCurrentLocation ?? '');

    // emit(AddLocationSucsess());
  }

  // void goToMyLocation() async {
  //   // emit(AddLocationLoading());
  //   var location = await servess.getLocation();
  //   googleMapController?.animateCamera(CameraUpdate.newCameraPosition(
  //       CameraPosition(
  //           target: LatLng(location.latitude!, location.longitude!),
  //           zoom: 19)));
  //   markers.clear();
  //   markers = {
  //     Marker(
  //         markerId: const MarkerId('1'),
  //         position: LatLng(location.latitude!, location.longitude!))
  //   };

  //   // emit(AddLocationSucsess());
  // }

  void confirmLocation() {
    // emit(AddLocationLoading2());
    // Future.delayed(const Duration(seconds: 2),()
    // {
    //   emit(AddLocationSucsess2());
    // });
  }

  @override
  Future<void> close() {
    googleMapController?.dispose();
    return super.close();
  }
}
