// ignore_for_file: library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:get/get.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart'
    as AccountSdk;

class UserRepository extends GetxController {
  Rx<AccountSdk.AccountInfo> accountInfo = AccountSdk.AccountInfo(
    (account) => account
      ..id = '0'
      ..firstName = ''
      ..lastName = ''
      ..phone = ''
      ..email = ''
      ..state = ''
      ..stateArea = ''
      ..latitude = '0.0'
      ..longitude = '0.0'
      ..profilePhoto =
          'https://medexer.s3.eu-north-1.amazonaws.com/avatars/avatar.png'
      ..accountType = AccountSdk.AccountInfoAccountTypeEnum.individual
      ..status = AccountSdk.AccountInfoStatusEnum.active
      ..fcmToken = ''
      ..referralCode = ''
      ..referredBy = ''
      ..lastLogin = DateTime(2024, 12, 16)
      ..lastDonationDate = ''
      ..inRecovery = false
      ..bloodGroup = AccountSdk.AccountInfoBloodGroupEnum.O_
      ..genotype = AccountSdk.AccountInfoGenotypeEnum.AA
      ..hasTattoos = false
      ..isComplianceUploaded = false,
  ).obs;

  final RxList<DonationCenterInfo> _donationCenters =
      <DonationCenterInfo>[].obs;
  RxList<DonationCenterInfo> get donationCenters => _donationCenters;

  final RxList<AccountSdk.ListItemInfo> _likedItems =
      <AccountSdk.ListItemInfo>[].obs;
  RxList<AccountSdk.ListItemInfo> get likedItems => _likedItems;

  final RxList<DonationCenterInfo> _favoriteDonationCenters =
      <DonationCenterInfo>[].obs;
  RxList<DonationCenterInfo> get favoriteDonationCenters =>
      _favoriteDonationCenters;

  final RxList<DonationCentreDaysOfWork> _donationCenterDaysOfWork =
      <DonationCentreDaysOfWork>[].obs;
  RxList<DonationCentreDaysOfWork> get donationCenterDaysOfWork =>
      _donationCenterDaysOfWork;

  Rx<AppointmentInfo> appointmentInfo = AppointmentInfo(
    (instance) => instance
      ..appointmentId = ''
      ..centerAddress = ''
      ..centerEmail = ''
      ..centerLatitude = ''
      ..centerLongitude = ''
      ..centerName = ''
      ..centerPhone = ''
      ..centerCoverPhoto = ''
      ..createdAt = DateTime(2024, 12, 16)
      ..date = DateTime(2024, 12, 16)
      ..id = ''
      ..status = AppointmentInfoStatusEnum.pending
      ..time = ''
      ..updatedAt = DateTime(2024, 12, 16)
      ..verificationCode = '',
  ).obs;

  final RxList<AppointmentInfo> _ongoingAppointments = <AppointmentInfo>[].obs;
  RxList<AppointmentInfo> get ongoingAppointments => _ongoingAppointments;

  final RxList<AppointmentInfo> _completedAppointments =
      <AppointmentInfo>[].obs;
  RxList<AppointmentInfo> get completedAppointments => _completedAppointments;

  final RxList<AccountSdk.MedicalHistoryInfo> _medicalHistory =
      <AccountSdk.MedicalHistoryInfo>[].obs;
  RxList<AccountSdk.MedicalHistoryInfo> get medicalHistory => _medicalHistory;

  Rx<AccountSdk.MedicalHistoryInfo> medicalHistoryInfo =
      AccountSdk.MedicalHistoryInfo((instance) => instance
        ..id = ''
        ..appointmentId = ''
        ..bloodGroup = ''
        ..centerAddress = ''
        ..centerCoverPhoto = ''
        ..centerEmail = ''
        ..centerLatitude = ''
        ..centerLongitude = ''
        ..centerName = ''
        ..centerPhone = ''
        ..createdAt = DateTime(2024, 12, 16)
        ..genotype = ''
        ..hepatitisB = false
        ..hepatitisC = false
        ..hiv1 = false
        ..hiv2 = false
        ..syphilis = false).obs;

  final RxList<AccountSdk.NotificationInfo> _notifications =
      <AccountSdk.NotificationInfo>[].obs;
  RxList<AccountSdk.NotificationInfo> get notifications => _notifications;

  final RxList<DonationCenterAvailability>
      _donationCenterAppointmentAvailability =
      <DonationCenterAvailability>[].obs;
  RxList<DonationCenterAvailability>
      get donationCenterAppointmentAvailability =>
          _donationCenterAppointmentAvailability;

  Rx<DonationCenterInfo> donationCenterInfo = DonationCenterInfo(
    (instance) => instance
      ..id = ''
      ..address = ''
      ..buildingNumber = ''
      ..coverPhoto = ''
      ..email = ''
      ..isComplianceApproved = false
      ..isComplianceUploaded = false
      ..latitude = '0'
      ..longDescription = ''
      ..longitude = '0'
      ..logo = ''
      ..name = ''
      ..nearestLandMark = ''
      ..phone = ''
      ..shortDescription = ''
      ..state = ''
      ..stateArea = ''
      ..status = '',
  ).obs;
}
