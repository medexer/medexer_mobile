// ignore_for_file: implementation_imports, library_prefixes, use_build_context_synchronously
import 'dart:developer';
import 'package:built_collection/built_collection.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/secrets.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/data/services/guards/auth_guard.dart';

class DonorService extends GetxController {
  RxBool isUploadComplianceProcessing = false.obs;
  RxBool isFetchAppointmentsProcessing = false.obs;
  RxBool isCreateAppointmentProcessing = false.obs;
  RxBool isFetchDonationCentersProcessing = false.obs;

  // !DONOR COMPLIANCE
  /// Compliance verification
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/donor/compliance
  ///
  /// [BODY] {
  ///   otp: string,
  ///   signupVerificationHash: string
  /// }
  Future<void> uploadComplianceService(
      UploadDonorComplianceDTO formData) async {
    try {
      log("[UPLOAD-COMPLIANCE-PENDING]");

      isUploadComplianceProcessing.value = true;

      ComplianceApi donorApi = ServiceRegistry.donorSdk.getComplianceApi();

      Dio.Response response = await donorApi.donorControllerUploadCompliance(
        uploadDonorComplianceDTO: formData,
        headers: {
          'Authorization': ServiceRegistry.localStorage.read(
            LocalStorageSecrets.dexerAccessToken,
          ),
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[UPLOAD-COMPLIANCE-RESPONSE] :: ${response.data}');

        await ServiceRegistry.accountService
            .fetchDetailedUserAccountInfoService();

        isUploadComplianceProcessing.value = false;

        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Compliance uploaded!',
        );

        ServiceRegistry.commonRepository.currentScreenIndex.value = 0;

        Get.toNamed(AppRoutes.dashboardRoute);

        log("[UPLOAD-COMPLIANCE-SUCCESS]");
      }
    } catch (error) {
      isUploadComplianceProcessing.value = false;

      log('[UPLOAD-COMPLIANCE-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[UPLOAD-COMPLIANCE-ERROR-RESPONSE] :: ${dioError.response}');

        if (dioError.response?.data['message'] != null) {
          log('[UPLOAD-COMPLIANCE-ERROR-RESPONSE] :: ${dioError.response?.data['message']}');

          customErrorMessageSnackbar(
            title: 'Message',
            message: dioError.response!.data['message'],
          );
        }
      }
    } finally {
      isUploadComplianceProcessing.value = false;
    }
  }

  // !FETCH DONATION CENTERS
  /// Donation centers
  ///
  /// [METHOD] - GET
  ///
  /// [ROUTE] - /v1/donor/donation-centers
  ///
  /// [IS-AUTHENTICATED] - true
  Future<void> fetchDonationCentersService() async {
    try {
      log("[FETCH-DONATION-CENTERS-PENDING]");

      isFetchDonationCentersProcessing.value = true;

      FeedApi feedApi = ServiceRegistry.donorSdk.getFeedApi();

      Dio.Response response = await feedApi.donorControllerGetDonationCenters(
        headers: {
          'Authorization': ServiceRegistry.localStorage.read(
            LocalStorageSecrets.dexerAccessToken,
          ),
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[FETCH-DONATION-CENTERS-RESPONSE] :: ${response.data.length}');

        isFetchDonationCentersProcessing.value = false;

        RxList<DonationCenterInfo> donationCenters =
            RxList<DonationCenterInfo>.from(response.data);

        ServiceRegistry.userRepository.donationCenters.clear();
        ServiceRegistry.userRepository.donationCenters.value = donationCenters;

        log("[FETCH-DONATION-CENTERS-SUCCESS]");
      }
    } catch (error) {
      isFetchDonationCentersProcessing.value = false;

      log('[FETCH-DONATION-CENTERS-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[FETCH-DONATION-CENTERS-ERROR-RESPONSE] :: ${dioError.response}');
      }
    } finally {
      isFetchDonationCentersProcessing.value = false;
    }
  }

  // !FETCH DONATION CENTER DAYS OF WORK
  /// Donation centers
  ///
  /// [METHOD] - GET
  ///
  /// [ROUTE] - /v1/donor/donation-center/:id/days-of-work
  ///
  /// [IS-AUTHENTICATED] - true
  Future<void> fetchDonationCenterProfileService(
      String donationCenterId) async {
    try {
      log("[FETCH-DONATION-CENTER-PROFILE-PENDING]");

      DonationCenterApi donationCenterApi =
          ServiceRegistry.donorSdk.getDonationCenterApi();

      final responses = await Future.wait([
        donationCenterApi.donorControllerGetDonationCenterDaysOfWork(
          id: int.parse(donationCenterId),
          headers: {
            'Authorization': ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        ).timeout(const Duration(seconds: 10)),
        donationCenterApi
            .donorControllerGetDonationCenterAppointmentAvailability(
          id: int.parse(donationCenterId),
          headers: {
            'Authorization': ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        ).timeout(const Duration(seconds: 10)),
      ]);

      if (responses[0].statusCode == 200 || responses[0].statusCode == 201) {
        // log('[FETCH-DONATION-CENTER-PROFILE-RESPONSE] :: ${responses[0].data}');

        RxList<DonationCentreDaysOfWork> donationCenterDaysOfWork =
            RxList<DonationCentreDaysOfWork>.from(responses[0].data!);

        RxList<DonationCenterAvailability>
            donationCenterAppointmentAvailability =
            RxList<DonationCenterAvailability>.from(responses[1].data!);

        ServiceRegistry.userRepository.donationCenterDaysOfWork.value =
            donationCenterDaysOfWork;

        ServiceRegistry.userRepository.donationCenterAppointmentAvailability
            .value = donationCenterAppointmentAvailability;

        log("[FETCH-DONATION-CENTER-PROFILE-SUCCESS]");
      }
    } catch (error) {
      log('[FETCH-DONATION-CENTER-PROFILE-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[FETCH-DONATION-CENTER-PROFILE-ERROR-RESPONSE] :: ${dioError.response}');
      }
    }
  }

  // !CREATE APPOINTMENT
  /// Create appointment
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/donor/create-appointment
  ///
  /// [IS-AUTHENTICATED] - true
  Future<void> createAppointmentService(
      CreateAppointmentDTO formData, String donationCenterId) async {
    try {
      log("[CREATE-APPOINTMENT-PENDING]");

      isCreateAppointmentProcessing.value = true;

      AppointmentApi appointmentApi =
          ServiceRegistry.donorSdk.getAppointmentApi();

      Dio.Response response =
          await appointmentApi.appointmentControllerCreateAppointment(
        createAppointmentDTO: formData,
        donationCenter: int.parse(donationCenterId),
        headers: {
          'Authorization': ServiceRegistry.localStorage.read(
            LocalStorageSecrets.dexerAccessToken,
          ),
        },
      ).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200 || response.statusCode == 201) {
        // log('[CREATE-APPOINTMENT-RESPONSE] :: ${responses[0].data}');

        AppointmentInfo appointmentInfo = response.data;

        ServiceRegistry.userRepository.appointmentInfo.value = appointmentInfo;

        ServiceRegistry.userRepository.ongoingAppointments.add(appointmentInfo);

        isCreateAppointmentProcessing.value = false;

        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Appointment created successfully!',
        );

        Get.toNamed(AppRoutes.ongoingAppointmentDescriptionRoute);

        log("[CREATE-APPOINTMENT-SUCCESS]");
      }
    } catch (error) {
      isCreateAppointmentProcessing.value = false;

      log('[CREATE-APPOINTMENT-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[CREATE-APPOINTMENT-ERROR-RESPONSE] :: ${dioError.response}');

        if (dioError.response?.data['message'] != null) {
          customErrorMessageSnackbar(
            title: 'Message',
            duration: 6500,
            message: dioError.response!.data['message'],
          );
        }
      }
    } finally {
      isCreateAppointmentProcessing.value = false;
    }
  }

  // !FETCH APPOINTMENTS
  /// Fetch appointments
  ///
  /// [METHOD] - GET
  ///
  /// [ROUTE] - /v1/donor/pending-appointments
  /// [ROUTE] - /v1/donor/completed-appointments
  ///
  /// [IS-AUTHENTICATED] - true
  Future<void> fetchAppointmentsService() async {
    try {
      log("[FETCH-APPOINTMENTS-PENDING]");

      isFetchAppointmentsProcessing.value = true;

      AppointmentApi appointmentApi =
          ServiceRegistry.donorSdk.getAppointmentApi();

      final responses = await Future.wait([
        appointmentApi.appointmentControllerGetPendingAppointments(
          headers: {
            'Authorization': ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        ).timeout(const Duration(seconds: 10)),
        appointmentApi.appointmentControllerGetCompletedAppointments(
          headers: {
            'Authorization': ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        ).timeout(const Duration(seconds: 10)),
      ]);

      if (responses[0].statusCode == 200 || responses[0].statusCode == 201) {
        // log('[FETCH-APPOINTMENTS-RESPONSE] :: ${responses[0].data}');

        RxList<AppointmentInfo> ongoingAppointments =
            RxList<AppointmentInfo>.from(responses[0].data!);

        RxList<AppointmentInfo> completedAppointments =
            RxList<AppointmentInfo>.from(responses[1].data!);

        ServiceRegistry.userRepository.ongoingAppointments.value =
            ongoingAppointments;

        ServiceRegistry.userRepository.completedAppointments.value =
            completedAppointments;

        isFetchAppointmentsProcessing.value = false;

        log("[FETCH-APPOINTMENTS-SUCCESS]");
      }
    } catch (error) {
      isFetchAppointmentsProcessing.value = false;

      log('[FETCH-APPOINTMENTS-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[FETCH-APPOINTMENTS-ERROR-RESPONSE] :: ${dioError.response}');
      }
    } finally {
      isFetchAppointmentsProcessing.value = false;
    }
  }

  //! FETCH FAVORITE CENTERS
  /// Fetch favorite centers.
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/donor/donation-centers/{donationCenterId}
  ///
  Future<void> fetchFavoriteCentersService() async {
    return authGuard<void>(() async {
      try {
        log("[FETCH-FAVORITE-CENTERS-PENDING]");

        List<DonationCenterInfo> centers = [];

        await ServiceRegistry.accountService.fetchUserSearchHistoryService();

        FeedApi feedApi = ServiceRegistry.donorSdk.getFeedApi();

        for (ListItemInfo likedItem
            in ServiceRegistry.userRepository.likedItems) {
          try {
            log("[FETCH-FAVORITE-CENTER-PROCESSING]");

            Dio.Response response =
                await feedApi.donorControllerGetDonationCenter(
              id: int.parse(likedItem.itemId),
              headers: {
                "Authorization": ServiceRegistry.localStorage.read(
                  LocalStorageSecrets.dexerAccessToken,
                ),
              },
            );

            if (response.statusCode == 200) {
              // log('[FETCH-FAVORITE-CENTER-RESPONSE] :: ${response.data}');
              centers.add(response.data);

              log("[FETCH-FAVORITE-CENTER-SUCCESS]");
            }
          } catch (error) {
            log("[FETCH-FAVORITE-CENTER-ERROR] :: $error");

            if (error is Dio.DioException) {
              Dio.DioException dioError = error;

              log('[FETCH-FAVORITE-CENTER-ERROR-RESPONSE] :: ${dioError.response}');
            }
          }
        }

        ServiceRegistry.userRepository.favoriteDonationCenters.value = centers;

        log("[FETCH-FAVORITE-CENTERS-SUCCESS]");
      } catch (error) {
        log('[FETCH-FAVORITE-CENTERS-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[FETCH-FAVORITE-CENTERS-ERROR-RESPONSE] :: ${dioError.response}');
        }
      }
    });
  }
}
