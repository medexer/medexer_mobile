// ignore_for_file: unused_import
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:medexer/core/constants/colors.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:medexer/core/constants/routes.dart';
import 'package:medexer/core/constants/secrets.dart';
import 'package:medexer/presentation/dashboard/dashboard.dart';
import 'package:medexer/presentation/auth/login/login_screen.dart';
import 'package:medexer/presentation/public/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initializeTimeOut() async {
    await Future.delayed(const Duration(milliseconds: 2500));

    final hasToken =
        localStorage.read(LocalStorageSecrets.dexerAccessToken) != null;

    if (hasToken) {
      Get.toNamed(AppRoutes.dashboardRoute);
    } else {
      Get.to(
        transition: Transition.fade,
        duration: const Duration(milliseconds: 800),
        () => const OnboardingScreen(),
      );
    }
  }

  @override
  void initState() {
    initializeTimeOut();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Animate(
          effects: const [
            FadeEffect(
              curve: Curves.easeInBack,
              duration: Duration(milliseconds: 1500),
            ),
          ],
          child: Image.asset(
            'assets/icons/icon_medexer_clif_1.png',
            width: 60,
          ),
        ),
      ),
    );
  }
}
