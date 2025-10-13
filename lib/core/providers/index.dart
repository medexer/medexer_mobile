import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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

  static Dio dioBaseOptions = Dio(BaseOptions(
    baseUrl: dotenv.env['INFRA_BASE_URL']!,
    sendTimeout: const Duration(milliseconds: 15000),
    connectTimeout: const Duration(milliseconds: 15000),
    receiveTimeout: const Duration(milliseconds: 15000),
  ));

  static AccountSdk accountSdk = AccountSdk(
    dio: dioBaseOptions,
    basePathOverride: dotenv.env['INFRA_BASE_URL']!,
  );
  static AuthSdk authSdk = AuthSdk(
    dio: dioBaseOptions,
    basePathOverride: dotenv.env['INFRA_BASE_URL']!,
  );
  static DonorSdk donorSdk = DonorSdk(
    dio: dioBaseOptions,
    basePathOverride: dotenv.env['INFRA_BASE_URL']!,
  );
}
