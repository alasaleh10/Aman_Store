import 'package:aman_store2/core/helper/location_helper.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EditLocationGoogleMap extends StatefulWidget {
  const EditLocationGoogleMap({super.key});

  @override
  State<EditLocationGoogleMap> createState() => _EditLocationGoogleMapState();
}

class _EditLocationGoogleMapState extends State<EditLocationGoogleMap> {
  @override
  void initState() {
    initGoogleMap();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(0, 0)));
  }

  void initGoogleMap() async {
    LocationService locationService = LocationService();
    await locationService.getLocation();
  }
}
