import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/providers/index.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/secrets.dart';
import 'package:medexer/presentation/dashboard/appointments_screen.dart';
import 'package:medexer/presentation/dashboard/donation_centers.dart';
import 'package:medexer/presentation/dashboard/home_screen.dart';
import 'package:medexer/presentation/dashboard/contact_us_screen.dart';
import 'package:medexer/presentation/dashboard/medical_history_screen.dart';
import 'package:medexer/presentation/dashboard/notifications_screen.dart';
import 'package:medexer/presentation/dashboard/profile_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
