// ignore_for_file: library_prefixes
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/secrets.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart';
import 'package:medexer/data/repositories/user_repository.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';

GetStorage localStorage = GetStorage();
GoogleSignIn googleSignIn = GoogleSignIn();

UserRepository userRepository = Get.find<UserRepository>();
CommonRepository commonRepository = Get.find<CommonRepository>();

void userLogoutHandler({
  BuildContext? context,
  bool hasContext = false,
  String displayMessage = 'Logged out!',
}) async {
  localStorage.remove(LocalStorageSecrets.dexerAccessToken);
  localStorage.remove(LocalStorageSecrets.dexerAuthenticationMethod);

  googleSignIn.signOut();

  if (hasContext == true) {
    Navigator.of(context!).pop();
  }

  customSuccessMessageSnackbar(
    title: 'Message',
    message: displayMessage,
  );

  commonRepository.currentScreenIndex.value = 0;

  Get.toNamed(AppRoutes.loginRoute);

  await Future.delayed(const Duration(milliseconds: 300));

  userRepository.accountInfo.value = AccountInfo(
    (account) => account
      ..id = '0'
      ..firstName = 'test'
      ..lastName = 'test'
      ..phone = '1234567890'
      ..email = 'test@test.com'
      ..state = ''
      ..stateArea = ''
      ..latitude = '0.0'
      ..longitude = '0.0'
      ..profilePhoto = 'https://via.placeholder.com/150'
      ..accountType = AccountInfoAccountTypeEnum.individual
      ..status = AccountInfoStatusEnum.active
      ..fcmToken = ''
      ..referralCode = ''
      ..referredBy = ''
      ..lastDonationDate = ''
      ..inRecovery = false
      ..bloodGroup = AccountInfoBloodGroupEnum.O_
      ..genotype = AccountInfoGenotypeEnum.AA
      ..hasTattoos = false
      ..isComplianceUploaded = false,
  );
}
