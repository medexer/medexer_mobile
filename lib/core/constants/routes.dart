import 'package:get/get.dart';
import 'package:medexer/presentation/public/splash_screen.dart';
import 'package:medexer/presentation/auth/login/login_screen.dart';
import 'package:medexer/presentation/public/onboarding_screen.dart';
import 'package:medexer/presentation/auth/signup/signup_screen.dart';
import 'package:medexer/presentation/public/location_permission_screen.dart';
import 'package:medexer/presentation/auth/signup/signup_verification_screen.dart';
import 'package:medexer/presentation/auth/signup/signup_create_password_screen.dart';
import 'package:medexer/presentation/auth/forgot_password/reset_password_screen.dart';
import 'package:medexer/presentation/auth/forgot_password/forgot_password_screen.dart';
import 'package:medexer/presentation/auth/forgot_password/forgot_password_otp_verification_screen.dart';

class AppRoutes {
  /// ROOT_SCREEN_ROUTE
  ///
  /// Navigates to splash screen
  static const String rootRoute = '/';

  /// ONBOARDING_SCREEN_ROUTE
  ///
  /// Navigates to onboarding screen
  static const String onboardingRoute = '/ONBOARDING_ROUTE';

  /// USER_LOCATION_SCREEN_ROUTE
  ///
  /// Navigates to location screen
  static const String locationPermissionRoute = '/LOCATION_PERMISSION_ROUTE';

  /// SELECT_COUNTRY_ROUTE
  ///
  /// Navigates to select country screen
  static const String selectCountryRoute = '/SELECT_COUNTRY_ROUTE';

  /// LOGIN_SCREEN_ROUTE
  ///
  /// Navigates to login screen
  static const String loginRoute = '/LOGIN_ROUTE';

  /// SIGNUP_SCREEN_ROUTE
  ///
  /// Navigates to signup screen
  static const String signUpRoute = '/SIGNUP_ROUTE';

  /// SIGNUP_CREATE_PASSWORD_SCREEN_ROUTE
  ///
  /// Navigates to signup create password screen
  static const String signUpCreatePasswordRoute =
      '/SIGNUP_CREATE_PASSWORD_ROUTE';

  /// SIGNUP_VERIFICATION_SCREEN_ROUTE
  ///
  /// Navigates to signup verification screen
  static const String signUpVerificationRoute = '/SIGNUP_VERIFICATION_ROUTE';

  /// FORGOT_PASSWORD_SCREEN_ROUTE
  ///
  /// Navigates to forgot password screen
  static const String forgotPasswordRoute = '/FORGOT_PASSWORD_ROUTE';

  /// FORGOT_PASSWORD_OTP_VERIFICATION_SCREEN_ROUTE
  ///
  /// Navigates to forgot password otp verification screen
  static const String forgotPasswordOtpVerificationRoute =
      '/FORGOT_PASSWORD_OTP_VERIFICATION_ROUTE';

  /// RESET_PASSWORD_SCREEN_ROUTE
  ///
  /// Navigates to reset password screen
  static const String resetPasswordRoute = '/RESET_PASSWORD_ROUTE';

  /// DASHBOARD_ROUTE
  ///
  /// Navigates to dashboard screen
  static const String dashboardRoute = '/DASHBOARD_ROUTE';

  /// HELP_ROUTE
  ///
  /// Navigates to help screen
  static const String helpRoute = '/HELP_ROUTE';

  /// SUPPORT_ROUTE
  ///
  /// Navigates to support screen
  static const String supportRoute = '/SUPPORT_ROUTE';

  /// LEGAL_ROUTE
  ///
  /// Navigates to legal screen
  static const String legalRoute = '/LEGAL_ROUTE';

  static List<GetPage> routes = [
    //PUBLIC
    GetPage(
      name: rootRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: onboardingRoute,
      page: () => const OnboardingScreen(),
    ),

    GetPage(
      name: locationPermissionRoute,
      page: () => const LocationPermissionScreen(),
    ),

    GetPage(
      name: loginRoute,
      page: () => const LoginScreen(),
    ),

    GetPage(
      name: forgotPasswordRoute,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(
      name: forgotPasswordOtpVerificationRoute,
      page: () => const ForgotPasswordOtpVerificationScreen(),
    ),
    GetPage(
      name: resetPasswordRoute,
      page: () => const ResetPasswordScreen(),
    ),

    GetPage(
      name: signUpRoute,
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: signUpCreatePasswordRoute,
      page: () => const SignupCreatePasswordScreen(),
    ),
    GetPage(
      name: signUpVerificationRoute,
      page: () => const SignupVerificationScreen(),
    ),
  ];
}
