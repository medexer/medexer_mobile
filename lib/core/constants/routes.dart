import 'package:get/get.dart';
import 'package:medexer/presentation/dashboard/dashboard.dart';
import 'package:medexer/presentation/public/app_update_screen.dart';
import 'package:medexer/presentation/public/splash_screen.dart';
import 'package:medexer/presentation/auth/login/login_screen.dart';
import 'package:medexer/presentation/public/onboarding_screen.dart';
import 'package:medexer/presentation/auth/signup/signup_screen.dart';
import 'package:medexer/presentation/dashboard/about_us_screen.dart';
import 'package:medexer/presentation/dashboard/contact_us_screen.dart';
import 'package:medexer/presentation/dashboard/medical_history_screen.dart';
import 'package:medexer/presentation/dashboard/donation_centers_screen.dart';
import 'package:medexer/presentation/public/location_permission_screen.dart';
import 'package:medexer/presentation/auth/signup/signup_verification_screen.dart';
import 'package:medexer/presentation/auth/signup/signup_create_password_screen.dart';
import 'package:medexer/presentation/auth/forgot_password/reset_password_screen.dart';
import 'package:medexer/presentation/auth/forgot_password/forgot_password_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/support/support_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/help/help_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/legal/legal_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/compliance/compliance_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/account/account_details_screen.dart';
import 'package:medexer/presentation/auth/forgot_password/forgot_password_otp_verification_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/donation_center/book_appointment_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/favorite/favorite_centers_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/donation_center/donation_center_map_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/donation_center/donation_center_profile_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/medical_history/medical_history_description_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/appointment/ongoing_appointment_description_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/appointment/completed_appointment_description_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/account/delete_account/delete_account_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/account/account_name/update_account_name_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/account/account_email/update_account_email_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/account/account_email/update_account_verify_email_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/account/account_password/update_account_password_screen.dart';
import 'package:medexer/presentation/dashboard/subscreens/profile/account/account_phone_number/update_account_phone_number_screen.dart';

class AppRoutes {
  /// ROOT_SCREEN_ROUTE
  ///
  /// Navigates to splash screen
  static const String rootRoute = '/';

  /// APP_UPDATE_SCREEN_ROUTE
  ///
  /// Navigates to app update screen
  static const String appUpdateRoute = '/APP_UPDATE_SCREEN_ROUTE';

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

  /// COMPLIANCE_ROUTE
  ///
  /// Navigates to compliance screen
  static const String complianceRoute = '/COMPLIANCE_ROUTE';

  /// DONATION_CENTERS_ROUTE
  ///
  /// Navigates to donation centers screen
  static const String donationCentersRoute = '/DONATION_CENTERS_ROUTE';

  /// DONATION_CENTER_PROFILE_ROUTE
  ///
  /// Navigates to donation center profile screen
  static const String donationCenterProfileRoute =
      '/DONATION_CENTER_PROFILE_ROUTE';

  /// BOOK_APPOINTMENT_ROUTE
  ///
  /// Navigates to book appointment screen
  static const String bookAppointmentRoute = '/BOOK_APPOINTMENT_ROUTE';

  /// DONATION_CENTER_MAP_ROUTE
  ///
  /// Navigates to donation center map screen
  static const String donationCenterMapRoute = '/DONATION_CENTER_MAP_ROUTE';

  /// ONGOING APPOINTMENT DESCRIPTION SCREEN
  ///
  /// Navigates to ongoing appointment description screen
  static const String ongoingAppointmentDescriptionRoute =
      '/ONGOING_APPOINTMENT_DESCRIPTION_SCREEN';

  /// COMPLETED APPOINTMENT DESCRIPTION SCREEN
  ///
  /// Navigates to completed appointment description screen
  static const String completedAppointmentDescription =
      '/COMPLETED_APPOINTMENT_DESCRIPTION_SCREEN';

  /// MEDICAL_HISTORY_ROUTE
  ///
  /// Navigates to medical history screen
  static const String medicalHistoryRoute = '/MEDICAL_HISTORY_ROUTE';

  /// MEDICAL_HISTORY_DESCRIPTION_ROUTE
  ///
  /// Navigates to medical history description screen
  static const String medicalHistoryDescriptionRoute =
      '/MEDICAL_HISTORY_DESCRIPTION_ROUTE';

  /// CONTACT_US_ROUTE
  ///
  /// Navigates to contact us screen
  static const String contactUsRoute = '/CONTACT_US_ROUTE';

  /// ABOUT_US_ROUTE
  ///
  /// Navigates to about us screen
  static const String aboutUsRoute = '/ABOUT_US_ROUTE';

  /// ACCOUNT_DETAILS_ROUTE
  ///
  /// Navigates to account details screen
  static const String accountDetailsRoute = '/ACCOUNT_DETAILS_ROUTE';

  /// UPDATE_ACCOUNT_NAME_ROUTE
  ///
  /// Navigates to update account name screen
  static const String updateAccountNameRoute = '/UPDATE_ACCOUNT_NAME_ROUTE';

  /// UPDATE_ACCOUNT_PHONE_NUMBER_ROUTE
  ///
  /// Navigates to update account phone number screen
  static const String updateAccountPhoneNumberRoute =
      '/UPDATE_ACCOUNT_PHONE_NUMBER_ROUTE';

  /// UPDATE_ACCOUNT_EMAIL_ROUTE
  ///
  /// Navigates to update account email screen
  static const String updateAccountEmailRoute = '/UPDATE_ACCOUNT_EMAIL_ROUTE';
  static const String updateAccountVerifyEmailRoute =
      '/UPDATE_VERIFY_ACCOUNT_EMAIL_ROUTE';

  /// UPDATE_ACCOUNT_PASSWORD_ROUTE
  ///
  /// Navigates to update account password screen
  static const String updateAccountPasswordRoute =
      '/UPDATE_ACCOUNT_PASSWORD_ROUTE';

  /// DELETE_ACCOUNT_ROUTE
  ///
  /// Navigates to delete account screen
  static const String deleteAccountRoute = '/DELETE_ACCOUNT_ROUTE';

  /// FAVORITE_CENTERS_ROUTE
  ///
  /// Navigates to favorite centers screen
  static const String favoriteCentersRoute = '/FAVORITE_CENTERS_ROUTE';

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


    // APP UPDATE ROUTE
    GetPage(
      name: appUpdateRoute,
      page: () => const AppUpdateScreen(),
    ),

    // ONBOARDING ROUTE
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

    GetPage(
      name: dashboardRoute,
      page: () => const Dashboard(),
    ),

    GetPage(
      name: complianceRoute,
      page: () => const ComplianceScreen(),
    ),

    GetPage(
      name: donationCentersRoute,
      page: () => const DonationCentersScreen(),
    ),

    GetPage(
      name: donationCenterProfileRoute,
      page: () => const DonationCenterProfileScreen(),
    ),

    GetPage(
      name: bookAppointmentRoute,
      page: () => const BookAppointmentScreen(),
    ),

    GetPage(
      name: donationCenterMapRoute,
      page: () => const DonationCenterMapScreen(),
    ),

    GetPage(
      name: ongoingAppointmentDescriptionRoute,
      page: () => const OngoingAppointmentDescriptionScreen(),
    ),

    GetPage(
      name: completedAppointmentDescription,
      page: () => const CompletedAppointmentDescriptionScreen(),
    ),

    GetPage(
      name: medicalHistoryRoute,
      page: () => const MedicalHistoryScreen(),
    ),

    GetPage(
      name: medicalHistoryDescriptionRoute,
      page: () => const MedicalHistoryDescriptionScreen(),
    ),

    GetPage(
      name: contactUsRoute,
      page: () => const ContactUsScreen(),
    ),

    GetPage(
      name: aboutUsRoute,
      page: () => const AboutUsScreen(),
    ),

    GetPage(
      name: accountDetailsRoute,
      page: () => const AccountDetailsScreen(),
    ),

    GetPage(
      name: updateAccountNameRoute,
      page: () => const UpdateAccountNameScreen(),
    ),

    GetPage(
      name: updateAccountEmailRoute,
      page: () => const UpdateAccountEmailScreen(),
    ),

    GetPage(
      name: updateAccountVerifyEmailRoute,
      page: () => const UpdateAccountVerifyEmailScreen(),
    ),

    GetPage(
      name: updateAccountPasswordRoute,
      page: () => const UpdateAccountPasswordScreen(),
    ),

    GetPage(
      name: updateAccountPhoneNumberRoute,
      page: () => const UpdateAccountPhoneNumberScreen(),
    ),

    GetPage(
      name: favoriteCentersRoute,
      page: () => const FavoriteCentersScreen(),
    ),

    GetPage(
      name: helpRoute,
      page: () => const HelpScreen(),
    ),

    GetPage(
      name: supportRoute,
      page: () => const SupportScreen(),
    ),

    GetPage(
      name: legalRoute,
      page: () => const LegalScreen(),
    ),

    GetPage(
      name: deleteAccountRoute,
      page: () => const DeleteAccountScreen(),
    ),
  ];
}
