import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/secrets.dart';
import 'package:medexer/data/services/notification/firebase_notification_service.dart';
import 'package:medexer/presentation/dashboard/home_screen.dart';
import 'package:medexer/presentation/dashboard/profile_screen.dart';
import 'package:medexer/components/navigation/custom_side_drawer.dart';
import 'package:medexer/presentation/dashboard/appointments_screen.dart';
import 'package:medexer/presentation/dashboard/notifications_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void initializeAppInfo() {
    ServiceRegistry.accountService.fetchDetailedUserAccountInfoService();

    ServiceRegistry.donorService.fetchDonationCentersService();

    ServiceRegistry.donorService.fetchAppointmentsService();

    ServiceRegistry.donorService.fetchFavoriteCentersService();

    ServiceRegistry.accountService.fetchNotificationsService();

    ServiceRegistry.accountService.fetchMedicalHistoryService();
  }

  final List<Widget> screens = [
    const HomeScreen(),
    const AppointmentsScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  void initializeDashboardAuth() async {
    await Future.delayed(const Duration(milliseconds: 80));

    if (ServiceRegistry.localStorage
                .read(LocalStorageSecrets.dexerAccessToken) ==
            null &&
        ServiceRegistry.localStorage
                .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
            'SECURE') {
      Get.toNamed(AppRoutes.loginRoute);
    }
  }

  void initializeMessagingService() async {
    await Future.delayed(const Duration(seconds: 12));

    Get.put(FirebaseNotificationService()).init(Get.context!);
  }

  @override
  initState() {
    initializeAppInfo();

    initializeMessagingService();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return WillPopScope(
        onWillPop: () async {
          if (ServiceRegistry.localStorage
                      .read(LocalStorageSecrets.dexerAccessToken) !=
                  null &&
              ServiceRegistry.localStorage
                      .read(LocalStorageSecrets.dexerAuthenticationMethod) ==
                  'SECURE') {
            return false;
          } else {
            Get.toNamed(AppRoutes.loginRoute);

            return false;
          }
        },
        child: Scaffold(
          key: scaffoldKey,
          drawer: CustomDrawer(scaffoldKey: scaffoldKey),
          body: screens[
              ServiceRegistry.commonRepository.currentScreenIndex.value],
        ),
      );
    });
  }
}
