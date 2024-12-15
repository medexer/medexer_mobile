// ignore_for_file: implementation_imports, library_prefixes, use_build_context_synchronously
import 'dart:developer';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/secrets.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:medexer/data/infra_sdk/auth/lib/auth_sdk.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';

class AuthenticationService extends GetxController {
  RxBool isSignInProcessing = false.obs;
  RxBool isSignUpProcessing = false.obs;
  RxBool isResetPasswordProcessing = false.obs;
  RxBool isForgotPasswordProcessing = false.obs;
  RxBool isResendSignUpOTPSuccessful = false.obs;
  RxBool isResetPasswordOtpVerificationProcessing = false.obs;

  final AuthSdk authSdk = AuthSdk(
      // basePathOverride: dotenv.env['INFRA_BASE_URL']!,
      );

  Future<void> googleSignInHandler() async {
    try {
      if (isSignInProcessing.isTrue) {
        return;
      }

      await FirebaseAuth.instance.signOut();

      final GoogleSignInAccount? googleSignInAccount =
          await ServiceRegistry.googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      OAuthSigninDTO payload = OAuthSigninDTO(
        (instance) => instance..email = userCredential.user!.email!,
      );

      oAuthSignInService(payload);
    } catch (e) {
      log('[GOOGLE-LOGIN-ERROR] :: ${e.toString()}');
    }
  }

  void appleSignInHandler() async{
 try {
    if (isSignInProcessing.isTrue) {
      return;
    }

    await FirebaseAuth.instance.signOut();

    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName
      ],
    );

    final credential = OAuthProvider('apple.com').credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode);

    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    final String? userIdToken = await userCredential.user?.getIdToken();

    log('[APPLE-LOGIN-AUTHENTICATION-USER-ACCESS-TOKEN] :: $userIdToken');

    OAuthSigninDTO payload = OAuthSigninDTO(
      (instance) => instance..email = userCredential.user!.email,
    );

    oAuthSignInService(
      payload,
    );
  } catch (e) {
    log('[APPLE-LOGIN-ERROR] :: ${e.toString()}');
  }
  }

  // !SIGNIN
  /// Signin to user account
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /auth/signin
  ///
  /// [BODY] {
  ///     email?: string,
  ///     password?: string,
  ///     phone?: string,
  /// }
  Future<void> oAuthSignInService(
    OAuthSigninDTO formData, {
    bool resendOtp = false,
  }) async {
    try {
      log("[OAUTH-SIGNIN-PENDING]");

      ServiceRegistry.localStorage.remove(
        LocalStorageSecrets.dexerAccessToken,
      );

      isSignInProcessing.value = true;

      AuthApi authApi = authSdk.getAuthApi();

      Dio.Response response = await authApi
          .authControllerSigninOAuth(
            oAuthSigninDTO: formData,
          )
          .timeout(const Duration(seconds: 30));

      SigninResponsePayload data = response.data;

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[OAUTH-SIGNIN-RESPONSE] :: $data');

        isSignInProcessing.value = false;

        //ROUTE TO DASHBOARD SCREEN
        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Login Successful!',
        );

        // ServiceRegistry.localStorage.write(
        //   LocalStorageSecrets.dexerAccessToken,
        //   data.token,
        // );
        ServiceRegistry.localStorage.write(
          LocalStorageSecrets.dexerAuthenticationMethod,
          "SECURE",
        );

        // Get.toNamed(AppRoutes.dashboardRoute);

        log("[OAUTH-SIGNIN-SUCCESS]");
      }
    } catch (error) {
      isSignInProcessing.value = false;

      log('[OAUTH-SIGNIN-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[OAUTH-SIGNIN-ERROR-RESPONSE] :: ${dioError.response}');

        if (dioError.response?.data['message'] != null) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: dioError.response?.data['message'],
          );
        }
      }
    } finally {
      isSignInProcessing.value = false;
    }
  }

  // !SIGNIN
  /// Signin to user account
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /auth/signin
  ///
  /// [BODY] {
  ///     email?: string,
  ///     password?: string,
  ///     phone?: string,
  /// }
  Future<void> signInService(
    SigninDTO formData, {
    bool resendOtp = false,
  }) async {
    try {
      log("[SIGNIN-PENDING]");

      ServiceRegistry.localStorage.remove(
        LocalStorageSecrets.dexerAccessToken,
      );

      isSignInProcessing.value = true;

      AuthApi authApi = authSdk.getAuthApi();

      Dio.Response response = await authApi
          .authControllerSigninDonor(
            signinDTO: formData,
          )
          .timeout(const Duration(seconds: 30));

      SigninResponsePayload data = response.data;

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[SIGNIN-RESPONSE] :: $data');

        isSignInProcessing.value = false;

        //ROUTE TO DASHBOARD SCREEN
        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Login Successful!',
        );

        // ServiceRegistry.localStorage.write(
        //   LocalStorageSecrets.dexerAccessToken,
        //   data.token,
        // );
        ServiceRegistry.localStorage.write(
          LocalStorageSecrets.dexerAuthenticationMethod,
          "SECURE",
        );

        // Get.toNamed(AppRoutes.dashboardRoute);

        log("[SIGNIN-SUCCESS]");
      }
    } catch (error) {
      isSignInProcessing.value = false;

      log('[SIGNIN-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[SIGNIN-ERROR-RESPONSE] :: ${dioError.response}');

        if (dioError.response?.data['message'] != null) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: dioError.response?.data['message'],
          );
        }
      }
    } finally {
      isSignInProcessing.value = false;
    }
  }

  // !CHECK EMAIL AND PHONE AVAILABILITY
  /// Check email and phone availability
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/auth/account-helper/availability/email
  /// [ROUTE] - /v1/auth/account-helper/availability/phone
  Future<void> checkEmailPhoneAvailabilityService(
    Map<String, dynamic> payload,
  ) async {
    try {
      log("[CHECK-EMAIL-PHONE-AVAILABILITY-PENDING]");

      isSignUpProcessing.value = true;

      HelpersApi helpersApi = authSdk.getHelpersApi();

      final responses = await Future.wait([
        helpersApi.authHelperControllerCheckEmailAvailability(
          email: payload['email'],
        ),
        helpersApi.authHelperControllerCheckPhoneAvailability(
          phone: payload['phone'],
        )
      ]);

      if (responses[0].statusCode == 200 && responses[1].statusCode == 200) {
        AvailabilityCheckResponsePayload phoneAvailabilityResponse =
            responses[0].data!;
        AvailabilityCheckResponsePayload emailAvailabilityResponse =
            responses[1].data!;

        if (phoneAvailabilityResponse.isAvailable == false) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: 'Phone number already exists!',
          );
        } else if (emailAvailabilityResponse.isAvailable == false) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: 'Email already exists!',
          );
        } else {
          Get.toNamed(
            AppRoutes.signUpCreatePasswordRoute,
            parameters: {
              "phone": payload['phone'],
              "email": payload['email'],
              "firstName": payload['firstName'],
              "lastName": payload['lastName'],
              "referralCode": payload['referralCode'],
            },
          );

          log("[CHECK-EMAIL-PHONE-AVAILABILITY-SUCCESS]");
        }
      }
    } catch (error) {
      isSignUpProcessing.value = false;
      log('[CHECK-EMAIL-PHONE-AVAILABILITY-ERROR] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[CHECK-EMAIL-PHONE-AVAILABILITY-ERROR-RESPONSE] :: ${dioError.response}');

        // if (dioError.response?.data['check'] == false) {
        //   customErrorMessageSnackbar(
        //     title: 'Message',
        //     message: 'Email or phone already exists!',
        //   );
        // }
      }
    } finally {
      isSignUpProcessing.value = false;
    }
  }

  // !SIGNUP
  /// Create new user account
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /auth/signup-verified
  ///
  /// [BODY] {
  ///  email: string,
  ///  password: string,
  ///  firstName: string,
  ///  lastName: string,
  ///  phone: string
  ///
  /// }
  Future<void> signUpService({
    bool resendOtp = false,
    CreateAccountDTO? formData,
  }) async {
    try {
      log("[SIGNUP-INITIALIZATION-PENDING]");

      isSignUpProcessing.value = true;
      isResendSignUpOTPSuccessful.value = false;

      AuthApi authApi = authSdk.getAuthApi();

      Dio.Response response = await authApi.authControllerSignupDonor(
        createAccountDTO: formData!,
      );

      SignupResponsePayload data = response.data;

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[SIGNUP-INITIALIZATION-RESPONSE] :: $data');

        isSignUpProcessing.value = false;

        if (resendOtp == false) {
          isResendSignUpOTPSuccessful.value = false;

          customSuccessMessageSnackbar(
            title: 'Message',
            message: 'Successful, verify your email.',
          );

          Get.toNamed(
            AppRoutes.signUpVerificationRoute,
            parameters: {
              "email": formData.email,
              "phone": formData.phone,
              "lastName": formData.lastName,
              "firstName": formData.firstName,
              "referralCode": formData.referralCode,
              "password": formData.password,
              "signupVerificationHash": data.signupVerificationHash,
            },
          );
        } else {
          isResendSignUpOTPSuccessful.value = true;

          customSuccessMessageSnackbar(
            title: 'Message',
            message: 'OTP sent successfully!',
          );

          Get.offNamed(
            AppRoutes.signUpVerificationRoute,
            parameters: {
              "email": formData.email,
              "phone": formData.phone,
              "lastName": formData.lastName,
              "firstName": formData.firstName,
              "referralCode": formData.referralCode,
              "password": formData.password,
              "signupVerificationHash": data.signupVerificationHash,
            },
          );
        }

        log("[SIGNUP-INITIALIZATION-SUCCESS]");
      }
    } catch (error) {
      isSignUpProcessing.value = false;
      isResendSignUpOTPSuccessful.value = false;

      log('[SIGNUP-INITIALIZATION-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[SIGNUP-INITIALIZATION-ERROR-RESPONSE] :: ${dioError.response}');

        if (dioError.response?.data['message'] != null) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: dioError.response!.data['message'],
          );
        }
      }
    } finally {
      isSignUpProcessing.value = false;
      isResendSignUpOTPSuccessful.value = false;
    }
  }

  // !SIGNUP VERIFICATION
  /// Signup verification
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/auth/signup-complete-verification
  ///
  /// [BODY] {
  ///   otp: string,
  ///   signupVerificationHash: string
  /// }
  Future<void> signUpVerificationService(
      CompleteSignupVerificationDTO formData) async {
    try {
      log("[SIGNUP-VERIFICATION-PENDING]");

      isSignUpProcessing.value = true;

      AuthApi authApi = authSdk.getAuthApi();

      Dio.Response response =
          await authApi.authControllerSignupCompleteVerification(
        completeSignupVerificationDTO: formData,
      );

      SignupVerificationResponsePayload data = response.data;

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[SIGNUP-VERIFICATION-RESPONSE] :: $data');

        isSignUpProcessing.value = false;

        // ServiceRegistry.localStorage.write(
        //   LocalStorageSecrets.dexerAccessToken,
        //   data.token,
        // );
        ServiceRegistry.localStorage.write(
          LocalStorageSecrets.dexerAuthenticationMethod,
          "SECURE",
        );

        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Signup Successful!',
        );

        // Get.toNamed(AppRoutes.dashboardRoute);

        log("[SIGNUP-VERIFICATION-SUCCESS]");
      }
    } catch (error) {
      isSignUpProcessing.value = false;

      log('[SIGNUP-VERIFICATION-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[SIGNUP-VERIFICATION-ERROR-RESPONSE] :: ${dioError.response}');

        if (dioError.response?.data['message'] != null) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: dioError.response!.data['message'],
          );
        }
      }
    } finally {
      isSignUpProcessing.value = false;
    }
  }

  // !FORGOT PASSWORD
  /// Forgot password
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /auth/forgot-password
  ///
  /// [BODY] {
  ///
  ///  email: string,
  ///
  /// }
  Future<void> forgotPasswordService(ForgotPasswordDTO formData) async {
    try {
      log("[FORGOT-PASSWORD-PENDING]");

      isForgotPasswordProcessing.value = true;

      PasswordApi passwordApi = authSdk.getPasswordApi();

      Dio.Response response = await passwordApi.authControllerForgotPassword(
        forgotPasswordDTO: formData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[FORGOT-PASSWORD-RESPONSE] :: ${response.data}');

        isForgotPasswordProcessing.value = false;

        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Success',
        );

        Get.offAllNamed(
          AppRoutes.forgotPasswordOtpVerificationRoute,
          parameters: {
            "email": formData.email,
          },
        );

        log("[FORGOT-PASSWORD-SUCCESS]");
      }
    } catch (error) {
      isForgotPasswordProcessing.value = false;
      log('[FORGOT-PASSWORD-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[FORGOT-PASSWORD-ERROR-RESPONSE] :: ${dioError.response}');

        if (dioError.response?.data['message'] != null) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: dioError.response!.data['message'],
          );
        }
      }
    } finally {
      isForgotPasswordProcessing.value = false;
    }
  }

  // !RESET PASSWORD OTP AUTHORIZATION
  /// Reset password otp authorization
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /v1/auth/reset-password-otp-verification
  ///
  /// [BODY] {
  ///
  ///  email: string,
  ///  passwordResetCode: string,
  ///
  /// }
  Future<void> resetPasswordOtpVerificationService(
      ResetPasswordVerificationDTO formData) async {
    try {
      log("[RESET-PASSWORD-OTP-VERIFICATION-PENDING]");
      log("[RESET-PASSWORD-OTP-VERIFICATION-PAYLOAD] :: $formData");

      isResetPasswordOtpVerificationProcessing.value = true;

      PasswordApi passwordApi = authSdk.getPasswordApi();

      Dio.Response response =
          await passwordApi.authControllerResetPasswordOtpVerification(
        resetPasswordVerificationDTO: formData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[RESET-PASSWORD-OTP-VERIFICATION-RESPONSE] :: ${response.data}');

        ResetPasswordOTPVerificationResponsePayload data = response.data;

        isResetPasswordOtpVerificationProcessing.value = false;

        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Success',
        );

        Get.toNamed(
          AppRoutes.resetPasswordRoute,
          parameters: {
            "accountId": data.accountId,
            "passwordResetToken": data.passwordResetToken,
          },
        );

        log("[RESET-PASSWORD-OTP-VERIFICATION-SUCCESS]");
      }
    } catch (error) {
      isResetPasswordOtpVerificationProcessing.value = false;

      log('[RESET-PASSWORD-OTP-VERIFICATION-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        if (dioError.response?.data['message'] != null) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: dioError.response?.data['message'],
          );
          isResetPasswordOtpVerificationProcessing.value = false;
        }
      }
    } finally {
      isResetPasswordOtpVerificationProcessing.value = false;
    }
  }

  // !RESET PASSWORD
  /// Reset password
  ///
  /// [METHOD] - POST
  ///
  /// [ROUTE] - /auth/reset-password
  ///
  /// [BODY] {
  ///
  ///  accountId: string,
  ///  newPassword: string,
  ///  passwordResetToken: string,
  ///
  /// }
  Future<void> resetPasswordService(ResetPasswordDTO formData) async {
    try {
      log("[RESET-PASSWORD-PENDING]");

      isResetPasswordProcessing.value = true;

      PasswordApi passwordApi = authSdk.getPasswordApi();

      Dio.Response response = await passwordApi.authControllerResetPassword(
        resetPasswordDTO: formData,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('[RESET-PASSWORD-RESPONSE] :: ${response.data}');

        isResetPasswordProcessing.value = false;

        customSuccessMessageSnackbar(
          title: 'Message',
          message: 'Password reset successful',
        );

        Get.toNamed(AppRoutes.loginRoute);

        log("[RESET-PASSWORD-SUCCESS]");
      }
    } catch (error) {
      isResetPasswordProcessing.value = false;

      log('[RESET-PASSWORD-ERROR-RESPONSE] :: $error');

      if (error is Dio.DioException) {
        Dio.DioException dioError = error;

        log('[RESET-PASSWORD-ERROR-RESPONSE] :: ${dioError.response}');

        if (dioError.response?.data['message'] != null) {
          customErrorMessageSnackbar(
            title: 'Message',
            message: dioError.response?.data['message'],
          );
        }
      }
    } finally {
      isResetPasswordProcessing.value = false;
    }
  }
}
