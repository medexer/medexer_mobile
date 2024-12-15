// ignore_for_file: unused_local_variable
import 'package:get/get.dart';
import 'package:medexer/core/themes/theme_provider.dart';
import 'package:medexer/data/repositories/user_repository.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/data/services/account/account_service.dart';
import 'package:medexer/data/services/auth/authentication_service.dart';
import 'package:medexer/data/services/donor/donor_service.dart';

class RootRepository extends GetxController {
  initialize() {
    // ThemeProvider themeProvider =
    Get.put(ThemeProvider());

    // CommonRepository commonRepository =
    Get.put(CommonRepository());

    // UserRepository userRepository =
    Get.put(UserRepository());

    // AuthenticationService authenticationService =
    Get.put(AuthenticationService());

    // DonorService donorService =
    Get.put(DonorService());

    // AccountService accountService =
    Get.put(AccountService());
  }
}
