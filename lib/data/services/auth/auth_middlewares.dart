// ignore_for_file: library_prefixes
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/secrets.dart';
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

  await Future.delayed(const Duration(seconds: 3));
}
