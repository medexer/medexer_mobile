import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medexer/data/infra_sdk/auth/lib/auth_sdk.dart';
import 'package:medexer/data/infra_sdk/donor/lib/donor_sdk.dart';
import 'package:medexer/data/services/donor/donor_service.dart';
import 'package:medexer/data/repositories/user_repository.dart';
import 'package:medexer/data/repositories/common_repository.dart';
import 'package:medexer/data/services/account/account_service.dart';
import 'package:medexer/data/infra_sdk/account/lib/account_sdk.dart';
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

  static AccountSdk accountSdk = AccountSdk(
      // basePathOverride: dotenv.env['INFRA_BASE_URL']!,
      );
  static AuthSdk authSdk = AuthSdk(
      // basePathOverride: dotenv.env['INFRA_BASE_URL']!,
      );
  static DonorSdk donorSdk = DonorSdk(
      // basePathOverride: dotenv.env['INFRA_BASE_URL']!,
      );
}
