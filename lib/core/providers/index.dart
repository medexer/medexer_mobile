import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medexer/data/services/donor/donor_service.dart';
import 'package:medexer/data/repositories/user_repository.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/data/services/account/account_service.dart';
import 'package:medexer/data/services/auth/authentication_service.dart';

class ServiceRegistry {
  static GetStorage localStorage = GetStorage();
  static GoogleSignIn googleSignIn = GoogleSignIn();
  static DonorService donorService = Get.find<DonorService>();
  static UserRepository userRepository = Get.find<UserRepository>();
  static AccountService accountService = Get.find<AccountService>();
  static CommonRepository commonRepository = Get.find<CommonRepository>();
  static AuthenticationService authenticationService =
      Get.find<AuthenticationService>();
}
