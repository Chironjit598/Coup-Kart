import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExplorePageController extends GetxController {
  TextEditingController searchController=TextEditingController();
  late GoogleMapController mapController;

  final LatLng center =
      const LatLng(23.8103, 90.4125); 

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  
}