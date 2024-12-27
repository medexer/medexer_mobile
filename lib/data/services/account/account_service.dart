// ignore_for_file: implementation_imports, library_prefixes, use_build_context_synchronously
import 'dart:developer';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/secrets.dart';
import 'package:dio/src/multipart_file.dart' as DioMultipart;
import 'package:medexer/data/services/guards/auth_guard.dart';
import 'package:medexer/data/services/auth/auth_middlewares.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart';

class AccountService extends GetxController {
  RxBool isContactUsProcessing = false.obs;
  RxBool isFileUploadProcessing = false.obs;
  RxBool isFetchAccountInfoProcessing = false.obs;
  RxBool isDeleteUserAccountProcessing = false.obs;
  RxBool isUpdateAccountInfoProcessing = false.obs;
  RxBool isResendUpdateAccountInfoOtpProcessing = false.obs;

  //! FETCH ACCOUNT INFO
  /// Fetch detailed user account info.
  ///
  /// [METHOD] - GET
  ///
  /// [ROUTE] - /account/me/detailed
  ///
  /// [IS-AUTHENTICATED]
  Future<void> fetchDetailedUserAccountInfoService() async {
    return authGuard<void>(() async {
      if (ServiceRegistry.localStorage
              .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
          'GUEST') {
        return;
      }

      try {
        log("[FETCH-DETAILED-USER-ACCOUNT-INFO-PENDING]");

        isFetchAccountInfoProcessing.value = true;

        MeApi meApi = ServiceRegistry.accountSdk.getMeApi();

        Dio.Response response =
            await meApi.accountControllerGetDetailedAccountInfo(
          headers: {
            "Authorization": ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        ).timeout(const Duration(seconds: 30));

        if (response.statusCode == 200) {
          // log('[FETCH-DETAILED-USER-ACCOUNT-INFO-RESPONSE] :: ${response.data}');

          AccountInfo accountInfo = response.data;

          ServiceRegistry.userRepository.accountInfo.value = accountInfo;

          if (!accountInfo.isComplianceUploaded) {
            Get.toNamed(AppRoutes.complianceRoute);
          }

          log("[FETCH-DETAILED-USER-ACCOUNT-INFO-SUCCESS]");

          isFetchAccountInfoProcessing.value = false;
        }
      } catch (error) {
        isFetchAccountInfoProcessing.value = false;

        log('[FETCH-DETAILED-USER-ACCOUNT-INFO-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[FETCH-DETAILED-USER-ACCOUNT-INFO-ERROR-RESPONSE] :: ${dioError.response}');
        }
      } finally {
        isFetchAccountInfoProcessing.value = false;
      }
    });
  }

  //! UPDATE ACCOUNT NAME
  /// Update user account name.
  ///
  /// [METHOD] - PATCH
  ///
  /// [ROUTE] - /account/me/update-name
  ///
  /// [IS-AUTHENTICATED]
  Future<void> updateUserAccountNameService(
      UpdateAccountNameDTO payload) async {
    return authGuard<void>(() async {
      if (ServiceRegistry.localStorage
              .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
          'GUEST') {
        return;
      }

      try {
        log("[UPDATE-USER-ACCOUNT-NAME-PENDING]");

        isUpdateAccountInfoProcessing.value = true;

        ManageContactInfoApi manageContactInfoApi =
            ServiceRegistry.accountSdk.getManageContactInfoApi();

        Dio.Response response =
            await manageContactInfoApi.accountControllerUpdateAccountName(
          updateAccountNameDTO: payload,
          headers: {
            "Authorization": ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        );

        if (response.statusCode == 200) {
          // log('[UPDATE-USER-ACCOUNT-NAME-RESPONSE] :: ${response.data}');

          AccountInfo accountInfo = response.data;

          ServiceRegistry.userRepository.accountInfo.value = accountInfo;

          Get.back();

          customSuccessMessageSnackbar(
            title: 'Message',
            message: 'Account name updated.',
          );

          log("[UPDATE-USER-ACCOUNT-NAME-SUCCESS]");

          isUpdateAccountInfoProcessing.value = false;
        }
      } catch (error) {
        isUpdateAccountInfoProcessing.value = false;

        log('[UPDATE-USER-ACCOUNT-NAME-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[UPDATE-USER-ACCOUNT-NAME-ERROR-RESPONSE] :: ${dioError.response}');
        }
      } finally {
        isUpdateAccountInfoProcessing.value = false;
      }
    });
  }

  //! UPDATE ACCOUNT PHONE NUMBER
  /// Update user account phone number.
  ///
  /// [METHOD] - PATCH
  ///
  /// [ROUTE] - /account/me/update-phone
  ///
  /// [IS-AUTHENTICATED]
  Future<void> updateUserAccountPhoneNumberService(
      UpdateAccountPhoneDTO payload) async {
    return authGuard<void>(() async {
      if (ServiceRegistry.localStorage
              .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
          'GUEST') {
        return;
      }

      try {
        log("[UPDATE-USER-ACCOUNT-PHONE-PENDING]");

        isUpdateAccountInfoProcessing.value = true;

        ManageContactInfoApi manageContactInfoApi =
            ServiceRegistry.accountSdk.getManageContactInfoApi();

        Dio.Response response =
            await manageContactInfoApi.accountControllerUpdateAccountPhone(
          updateAccountPhoneDTO: payload,
          headers: {
            "Authorization": ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        );

        if (response.statusCode == 200) {
          // log('[UPDATE-USER-ACCOUNT-PHONE-RESPONSE] :: ${response.data}');

          AccountInfo accountInfo = response.data;

          ServiceRegistry.userRepository.accountInfo.value = accountInfo;

          Get.back();

          customSuccessMessageSnackbar(
            title: 'Message',
            message: 'Account phone number updated.',
          );

          log("[UPDATE-USER-ACCOUNT-PHONE-SUCCESS]");

          isUpdateAccountInfoProcessing.value = false;
        }
      } catch (error) {
        isUpdateAccountInfoProcessing.value = false;

        log('[UPDATE-USER-ACCOUNT-PHONE-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          if (dioError.response?.data['message'] != null) {
            customErrorMessageSnackbar(
              title: 'Message',
              message: dioError.response?.data['message'],
            );
          }

          log('[UPDATE-USER-ACCOUNT-PHONE-ERROR-RESPONSE] :: ${dioError.response}');
        }
      } finally {
        isUpdateAccountInfoProcessing.value = false;
      }
    });
  }

  //! UPDATE ACCOUNT EMAIL
  /// Update user account email.
  ///
  /// [METHOD] - PATCH
  ///
  /// [ROUTE] - /v1/account/contact/update-email
  ///
  /// [IS-AUTHENTICATED]
  Future<void> updateUserAccountEmailService(
    UpdateAccountEmailDTO payload, {
    bool resendOtp = false,
  }) async {
    return authGuard<void>(() async {
      if (ServiceRegistry.localStorage
              .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
          'GUEST') {
        return;
      }

      try {
        log("[UPDATE-USER-ACCOUNT-EMAIL-PENDING]");

        isUpdateAccountInfoProcessing.value = true;
        isResendUpdateAccountInfoOtpProcessing.value = true;

        ManageContactInfoApi manageContactInfoApi =
            ServiceRegistry.accountSdk.getManageContactInfoApi();

        Dio.Response response =
            await manageContactInfoApi.accountControllerUpdateAccountEmail(
          updateAccountEmailDTO: payload,
          headers: {
            "Authorization": ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        );

        if (response.statusCode == 200 || response.statusCode == 201) {
          log('[UPDATE-USER-ACCOUNT-EMAIL-RESPONSE] :: ${response.data}');

          isUpdateAccountInfoProcessing.value = false;
          isResendUpdateAccountInfoOtpProcessing.value = false;

          if (resendOtp == false) {
            customSuccessMessageSnackbar(
              title: 'Message',
              message: 'Verify new email.',
            );

            Get.toNamed(
              AppRoutes.updateAccountVerifyEmailRoute,
              parameters: {
                'email': payload.newEmail,
              },
            );
          } else {
            customSuccessMessageSnackbar(
              title: 'Message',
              message: 'OTP sent successfully.',
            );

            Get.offAndToNamed(
              AppRoutes.updateAccountVerifyEmailRoute,
              parameters: {
                'email': payload.newEmail,
              },
            );
          }

          log("[UPDATE-USER-ACCOUNT-EMAIL-SUCCESS]");
        }
      } catch (error) {
        isUpdateAccountInfoProcessing.value = false;
        isResendUpdateAccountInfoOtpProcessing.value = false;

        log('[UPDATE-USER-ACCOUNT-EMAIL-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[UPDATE-USER-ACCOUNT-EMAIL-ERROR-RESPONSE] :: ${dioError.response}');

          if (dioError.response?.data['message'] != null) {
            customErrorMessageSnackbar(
              title: 'Message',
              message: dioError.response?.data['message'],
            );
          }
        }
      } finally {
        isUpdateAccountInfoProcessing.value = false;
        isResendUpdateAccountInfoOtpProcessing.value = false;
      }
    });
  }

  //! VERIFY NEW ACCOUNT EMAIL
  /// Verify new account email.
  ///
  /// [METHOD] - PATCH
  ///
  /// [ROUTE] - /v1/account/me/verify-email
  ///
  /// [IS-AUTHENTICATED]
  Future<void> verifyNewAccountEmailService(
      VerifyNewAccountEmailDTO payload) async {
    return authGuard<void>(() async {
      if (ServiceRegistry.localStorage
              .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
          'GUEST') {
        return;
      }

      try {
        log("[VERIFY-NEW-ACCOUNT-EMAIL-PENDING]");

        isUpdateAccountInfoProcessing.value = true;

        ManageContactInfoApi manageContactInfoApi =
            ServiceRegistry.accountSdk.getManageContactInfoApi();

        Dio.Response response =
            await manageContactInfoApi.accountControllerVerifyNewAccountEmail(
          verifyNewAccountEmailDTO: payload,
          headers: {
            "Authorization": ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        );

        if (response.statusCode == 200) {
          log('[VERIFY-NEW-ACCOUNT-EMAIL-RESPONSE] :: ${response.data}');

          isUpdateAccountInfoProcessing.value = false;

          AccountInfo accountInfo = response.data;

          ServiceRegistry.userRepository.accountInfo.value = accountInfo;

          customSuccessMessageSnackbar(
            title: 'Message',
            message: 'Email updated.',
          );

          Get.toNamed(
            AppRoutes.accountDetailsRoute,
          );

          log("[VERIFY-NEW-ACCOUNT-EMAIL-SUCCESS]");
        }
      } catch (error) {
        isUpdateAccountInfoProcessing.value = false;

        log('[VERIFY-NEW-ACCOUNT-EMAIL-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[VERIFY-NEW-ACCOUNT-EMAIL-ERROR-RESPONSE] :: ${dioError.response}');

          // if (dioError.response?.data['message'] != null) {
          //   customErrorMessageSnackbar(
          //     title: 'Message',
          //     message: dioError.response?.data['message'],
          //   );
          // }
        }
      } finally {
        isUpdateAccountInfoProcessing.value = false;
      }
    });
  }

  //! UPDATE ACCOUNT PASSWORD
  /// Update account password.
  ///
  /// [METHOD] - PATCH
  ///
  /// [ROUTE] - /v1/account/me/update-password
  ///
  /// [IS-AUTHENTICATED]
  Future<void> updateAccountPasswordService(
      UpdateAccountPasswordDTO payload) async {
    return authGuard<void>(() async {
      if (ServiceRegistry.localStorage
              .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
          'GUEST') {
        return;
      }

      try {
        log("[UPDATE-ACCOUNT-PASSWORD-PENDING]");

        isUpdateAccountInfoProcessing.value = true;

        MeApi meApi = ServiceRegistry.accountSdk.getMeApi();

        Dio.Response response =
            await meApi.accountControllerUpdateAccountPassword(
          updateAccountPasswordDTO: payload,
          headers: {
            "Authorization": ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        );

        if (response.statusCode == 200) {
          log('[UPDATE-ACCOUNT-PASSWORD-RESPONSE] :: ${response.data}');

          isUpdateAccountInfoProcessing.value = false;

          Get.back();

          customSuccessMessageSnackbar(
            title: 'Message',
            message: 'Password updated.',
          );

          log("[UPDATE-ACCOUNT-PASSWORD-SUCCESS]");
        }
      } catch (error) {
        isUpdateAccountInfoProcessing.value = false;

        log('[UPDATE-ACCOUNT-PASSWORD-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[UPDATE-ACCOUNT-PASSWORD-ERROR-RESPONSE] :: ${dioError.response}');

          if (dioError.response?.data['message'] != null) {
            customErrorMessageSnackbar(
              title: 'Message',
              message: dioError.response?.data['message'],
            );
          }
        }
      } finally {
        isUpdateAccountInfoProcessing.value = false;
      }
    });
  }

  //! UPDATE ACCOUNT AVATAR
  /// Update account avatar.
  ///
  /// [METHOD] - GET
  ///
  /// [ROUTE] - /account/me
  ///
  /// [IS-AUTHENTICATED]
  Future<void> updateAccountAvatarService(
      {PlatformFile? platformFile,
      String? photoUrl,
      BuildContext? context}) async {
    try {
      log("[UPDATE-ACCOUNT-AVATAR-PENDING]");

      late FileUploadResult fileUploadResult;

      MeApi meApi = ServiceRegistry.accountSdk.getMeApi();
      UploadApi uploadApi = ServiceRegistry.accountSdk.getUploadApi();

      isFileUploadProcessing.value = true;

      if (platformFile != null) {
        DioMultipart.MultipartFile file =
            await DioMultipart.MultipartFile.fromFile(
          platformFile.path!,
          filename: platformFile.name,
        );

        Dio.Response uploadImageResponse =
            await uploadApi.imageUploadControllerUploadImage(
          file: file,
          headers: {
            'content-type': 'multipart/form-data',
          },
        ).timeout(const Duration(seconds: 30));

        fileUploadResult = uploadImageResponse.data;
      }

      UpdateProfileImageDTO formData = UpdateProfileImageDTO(
        (instance) => instance
          ..imageUrl = platformFile != null ? fileUploadResult.url : photoUrl,
      );

      Dio.Response response = await meApi.accountControllerUpdateProfileImage(
        updateProfileImageDTO: formData,
        headers: {
          "Authorization": ServiceRegistry.localStorage.read(
            LocalStorageSecrets.dexerAccessToken,
          ),
        },
      );

      if (response.statusCode == 200) {
        log('[UPDATE-USER-ACCOUNT-AVATAR-RESPONSE] :: ${response.data}');

        AccountInfo accountInfo = response.data;

        ServiceRegistry.userRepository.accountInfo.value = accountInfo;

        Navigator.of(context!).pop();

        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Profile avatar updated.',
        );

        log("[UPDATE-ACCOUNT-AVATAR-SUCCESS]");

        isFileUploadProcessing.value = false;
      }
    } catch (error) {
      isFileUploadProcessing.value = false;

      log('[UPDATE-ACCOUNT-AVATAR-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[UPDATE-ACCOUNT-AVATAR-ERROR-RESPONSE] :: ${dioError.response}');
      }
    } finally {
      isFileUploadProcessing.value = false;
    }
  }

  //! UPDATE ACCOUNT FCM TOKEN
  /// Update account fcm token.
  ///
  /// [METHOD] - PATCH
  ///
  /// [ROUTE] - /account/me/update-fcm-token
  ///
  /// [IS-AUTHENTICATED]
  Future<void> updateAccountFcmTokenService(UpdateFCMTokenDTO payload) async {
    try {
      log("[UPDATE-ACCOUNT-FCM-TOKEN-PENDING]");

      MeApi meApi = ServiceRegistry.accountSdk.getMeApi();

      Dio.Response response = await meApi.accountControllerUpdateFcmToken(
        updateFCMTokenDTO: payload,
        headers: {
          "Authorization": ServiceRegistry.localStorage.read(
            LocalStorageSecrets.dexerAccessToken,
          ),
        },
      );

      if (response.statusCode == 200) {
        log('[UPDATE-USER-ACCOUNT-FCM-TOKEN-RESPONSE] :: ${response.data}');

        log("[UPDATE-ACCOUNT-FCM-TOKEN-SUCCESS]");
      }
    } catch (error) {
      log('[UPDATE-ACCOUNT-FCM-TOKEN-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[UPDATE-ACCOUNT-FCM-TOKEN-ERROR-RESPONSE] :: ${dioError.response}');
      }
    }
  }

  //! FETCH MEDICAL HISTORY
  /// Fetch medical history.
  ///
  /// [METHOD] - GET
  ///
  /// [ROUTE] - /account/me/medical-history
  ///
  /// [IS-AUTHENTICATED]
  Future<void> fetchMedicalHistoryService() async {
    try {
      log("[FETCH-MEDICAL-HISTORY-PENDING]");

      MedicalHistoryApi medicalHistoryApi =
          ServiceRegistry.accountSdk.getMedicalHistoryApi();

      Dio.Response response =
          await medicalHistoryApi.accountControllerGetMedicalHistory(
        headers: {
          "Authorization": ServiceRegistry.localStorage.read(
            LocalStorageSecrets.dexerAccessToken,
          ),
        },
      );

      if (response.statusCode == 200) {
        // log('[FETCH-MEDICAL-HISTORY-RESPONSE] :: ${response.data}');

        RxList<MedicalHistoryInfo> medicalHistory =
            RxList<MedicalHistoryInfo>.from(response.data);

        ServiceRegistry.userRepository.medicalHistory.clear();

        ServiceRegistry.userRepository.medicalHistory.value = medicalHistory;

        log("[FETCH-MEDICAL-HISTORY-SUCCESS]");
      }
    } catch (error) {
      log('[FETCH-MEDICAL-HISTORY-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[FETCH-MEDICAL-HISTORY-ERROR-RESPONSE] :: ${dioError.response}');
      }
    }
  }

  //! FETCH NOTIFICATIONS
  /// Fetch notifications.
  ///
  /// [METHOD] - GET
  ///
  /// [ROUTE] - /account/me/notifications
  ///
  /// [IS-AUTHENTICATED]
  Future<void> fetchNotificationsService() async {
    try {
      log("[FETCH-NOTIFICATIONS-PENDING]");

      NotificationsApi notificationsApi =
          ServiceRegistry.accountSdk.getNotificationsApi();

      Dio.Response response =
          await notificationsApi.accountControllerGetNotifications(
        headers: {
          "Authorization": ServiceRegistry.localStorage.read(
            LocalStorageSecrets.dexerAccessToken,
          ),
        },
      );

      if (response.statusCode == 200) {
        // log('[FETCH-NOTIFICATIONS-RESPONSE] :: ${response.data}');

        RxList<NotificationInfo> notifications =
            RxList<NotificationInfo>.from(response.data);

        ServiceRegistry.userRepository.notifications.clear();

        ServiceRegistry.userRepository.notifications.value = notifications;

        log("[FETCH-NOTIFICATIONS-SUCCESS]");
      }
    } catch (error) {
      log('[FETCH-NOTIFICATIONS-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[FETCH-NOTIFICATIONS-ERROR-RESPONSE] :: ${dioError.response}');
      }
    }
  }

  //! FETCH USER SEARCH HISTORY
  /// Fetch user search history.
  ///
  /// [METHOD] - GET
  ///
  /// [ROUTE] - /v1/account/list-items
  ///
  Future<void> fetchUserSearchHistoryService() async {
    return authGuard<void>(() async {
      try {
        log("[FETCH-USER-SEARCH-HISTORY-PENDING]");

        UserListApi userListApi = ServiceRegistry.accountSdk.getUserListApi();

        Dio.Response response = await userListApi.listItemControllerGetUserList(
          headers: {
            "Authorization": ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        );

        if (response.statusCode == 200) {
          // log('[FETCH-USER-SEARCH-HISTORY-RESPONSE] :: ${response.data}');

          ServiceRegistry.userRepository.likedItems.clear();

          RxList<ListItemInfo> likedItems =
              RxList<ListItemInfo>.from(response.data);

          for (ListItemInfo history in likedItems) {
            // if (history['type'] == 'search-history-entry') {
            //   userRepository.searchHistory.add(
            //     UserSearchHistoryModel.fromJson(history),
            //   );
            // }
            if (history.entityType ==
                ListItemInfoEntityTypeEnum.donationCenter) {
              ServiceRegistry.userRepository.likedItems.add(
                history,
              );
            }
          }

          log("[FETCH-USER-SEARCH-HISTORY-SUCCESS]");
        }
      } catch (error) {
        log('[FETCH-USER-SEARCH-HISTORY-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[FETCH-USER-SEARCH-HISTORY-ERROR-RESPONSE] :: ${dioError.response}');
        }
      }
    });
  }

  //! USER LIKE OUTLET
  /// User like outlet.
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/account/list-items
  ///
  Future<void> likeDonationCenterService(AddListItemDTO payload) async {
    return authGuard<void>(() async {
      try {
        log("[LIKE-DONATION-CENTER-PENDING]");

        UserListApi userListApi = ServiceRegistry.accountSdk.getUserListApi();

        Dio.Response response =
            await userListApi.listItemControllerAddItemToList(
          addListItemDTO: payload,
          headers: {
            "Authorization": ServiceRegistry.localStorage
                .read(LocalStorageSecrets.dexerAccessToken),
          },
        );

        if (response.statusCode == 201) {
          // log('[LIKE-DONATION-CENTER-RESPONSE] :: ${response.data}');

          ListItemInfo listItemInfo = response.data;

          ServiceRegistry.userRepository.likedItems.add(listItemInfo);

          log("[LIKE-DONATION-CENTER-SUCCESS]");
        }
      } catch (error) {
        log('[LIKE-DONATION-CENTER-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[LIKE-DONATION-CENTER-ERROR-RESPONSE] :: ${dioError.response}');
        }
      }
    });
  }

  //! USER UNLIKE DONATION CENTER
  /// User unlike donation center.
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/account/list-items/{itemId}
  ///
  Future<void> unlikeDonationCenterService(String itemId) async {
    return authGuard<void>(() async {
      try {
        log("[UNLIKE-DONATION-CENTER-PENDING]");

        UserListApi userListApi = ServiceRegistry.accountSdk.getUserListApi();

        Dio.Response response =
            await userListApi.listItemControllerRemoveItemFromList(
          itemId: int.parse(itemId),
          headers: {
            "Authorization": ServiceRegistry.localStorage.read(
              LocalStorageSecrets.dexerAccessToken,
            ),
          },
        );

        if (response.statusCode == 200) {
          // log('[UNLIKE-DONATION-CENTER-RESPONSE] :: ${response.data}');

          ServiceRegistry.userRepository.likedItems.removeWhere(
            (item) => item.id == itemId,
          );

          ServiceRegistry.donorService.fetchFavoriteCentersService();

          log("[UNLIKE-DONATION-CENTER-SUCCESS]");
        }
      } catch (error) {
        log('[UNLIKE-DONATION-CENTER-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('[UNLIKE-DONATION-CENTER-ERROR-RESPONSE] :: ${dioError.response}');
        }
      }
    });
  }

  //! CONTACT US
  /// Contact us.
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /account/support/contact-us
  ///
  /// [IS-AUTHENTICATED]
  Future<bool> contactUsService(ContactUsDTO payload) async {
    try {
      log("[CONTACT-US-PENDING]");

      isContactUsProcessing.value = true;

      SupportApi supportApi = ServiceRegistry.accountSdk.getSupportApi();

      Dio.Response response = await supportApi.supportControllerContactUs(
        contactUsDTO: payload,
        headers: {
          "Authorization": ServiceRegistry.localStorage.read(
            LocalStorageSecrets.dexerAccessToken,
          ),
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[CONTACT-US-RESPONSE] :: ${response.data}');

        customSuccessMessageSnackbar(
          title: 'Message',
          message:
              'Your ticket has been created successfully, we will get back to you soon.',
        );

        isContactUsProcessing.value = false;

        log("[CONTACT-US-SUCCESS]");

        return true;
      }

      return false;
    } catch (error) {
      isContactUsProcessing.value = false;

      log('[CONTACT-US-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[CONTACT-US-ERROR-RESPONSE] :: ${dioError.response}');
      }

      return false;
    } finally {
      isContactUsProcessing.value = false;
    }
  }

  //! DELETE USER ACCOUNT
  /// Delete account.
  ///
  /// [METHOD] - DELETE
  ///
  /// [ROUTE] - /v1/account/me
  ///
  Future<void> deleteUserAccountService(
      DeleteAccountDTO payload, BuildContext context) async {
    return authGuard<void>(() async {
      if (ServiceRegistry.localStorage
              .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
          'GUEST') {
        return;
      }

      try {
        log("DELETE-USER-ACCOUNT-PENDING]");

        isDeleteUserAccountProcessing.value = true;

        MeApi meApi = ServiceRegistry.accountSdk.getMeApi();

        Dio.Response response = await meApi.accountControllerDeleteAccount(
          deleteAccountDTO: payload,
          headers: {
            "Authorization": ServiceRegistry.localStorage
                .read(LocalStorageSecrets.dexerAccessToken),
          },
        );

        if (response.statusCode == 200) {
          log('DELETE-USER-ACCOUNT-RESPONSE] :: ${response.data}');

          Navigator.of(context).pop();

          userLogoutHandler(displayMessage: 'Account deleted successfully.');

          isDeleteUserAccountProcessing.value = false;

          log("DELETE-USER-ACCOUNT-SUCCESS]");
        }
      } catch (error) {
        isDeleteUserAccountProcessing.value = false;

        log('DELETE-USER-ACCOUNT-ERROR-RESPONSE] :: $error');

        if (error is Dio.DioException) {
          Dio.DioException dioError = error;

          log('DELETE-USER-ACCOUNT-ERROR-RESPONSE] :: ${dioError.response}');

          if (dioError.response?.data['message'] != null) {
            customErrorMessageSnackbar(
              title: 'Message',
              message: dioError.response?.data['message'],
            );
          }
        }
      } finally {
        isDeleteUserAccountProcessing.value = false;
      }
    });
  }

  //! UPLOAD FILE
  /// Upload file.
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/upload/file
  Future<String> uploadFile(PlatformFile platformFile) async {
    try {
      log('[FILE-UPLOAD-PROCESSING]');

      isFileUploadProcessing.value = true;

      UploadApi uploadApi = ServiceRegistry.accountSdk.getUploadApi();

      DioMultipart.MultipartFile file =
          await DioMultipart.MultipartFile.fromFile(
        platformFile.path!,
        filename: platformFile.name,
        contentType:
            Dio.DioMediaType.parse(getFileMimeType(platformFile.extension!)),
      );

      Dio.Response response = await uploadApi.imageUploadControllerUploadFile(
        file: file,
        headers: {
          'content-type': 'multipart/form-data',
        },
      ).timeout(const Duration(seconds: 30));

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[FILE-UPLOAD-SUCCESS] :: ${response.data}');

        FileUploadResult fileUploadResult = response.data;

        return fileUploadResult.url;
      }

      return '';
    } catch (error) {
      log('[FILE-UPLOAD-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[FILE-UPLOAD-ERROR-RESPONSE] :: ${dioError.response}');
      }

      return '';
    } finally {
      isFileUploadProcessing.value = false;
    }
  }
}
