import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:medexer/core/models/user_country_model.dart';
import 'package:medexer/core/models/donation_center_info_model.dart';

class CommonRepository extends GetxController {
  RxInt currentScreenIndex = 0.obs;

  RxString complianceStep = 'Personal details'.obs;

  Rx<Position> currentUserPosition = Position(
    longitude: 0,
    latitude: 0,
    timestamp: DateTime.now(),
    accuracy: 15,
    altitude: 1,
    altitudeAccuracy: 1,
    heading: 1,
    headingAccuracy: 1,
    speed: 1,
    speedAccuracy: 1,
  ).obs;

  Rx<DonationCenterInfoModel> donationCenterInfo =
      DonationCenterInfoModel.fromJson({
    'name': '',
    'latitude': '',
    'longitude': '',
    'address': '',
    'phone': '',
    'coverPhoto': '',
  }).obs;

  Rx<UserCountryModel> userCountry = UserCountryModel.fromJson({
    'name': 'Nigeria',
    'flagEmoji': '🇳🇬',
    'dialCode': '+234',
  }).obs;
}
