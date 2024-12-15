// ignore_for_file: use_build_context_synchronously
import 'dart:io';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:medexer/core/middlewares/index.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:medexer/components/snackbars/custom_snackbar.dart';
import 'package:medexer/data/services/account/account_service.dart';

class FirebaseNotificationService {
  static String? fcmToken;

  static bool _isInitialized = false;

  static final FirebaseNotificationService _instance =
      FirebaseNotificationService._internal();

  factory FirebaseNotificationService() => _instance;
  FirebaseNotificationService._internal();

  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> init(BuildContext context) async {
    if (_isInitialized) return;
    _isInitialized = true;

    try {
      // Requesting permission for notifications
      NotificationSettings settings = await _fcm.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true,
      );

      log(
        '[FIREBASE-NOTIFICATION-PERMISSION] :: ${settings.authorizationStatus}',
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        fcmToken = await _fcm.getToken();

        // UpdateFCMTokenDTO updateFCMTokenDTO = UpdateFCMTokenDTO(
        //   (instance) => instance..fcmToken = fcmToken,
        // );

        // await accountService.updateFcmTokenService(updateFCMTokenDTO);
      }

      _fcm.onTokenRefresh.listen((newToken) async {
        // UpdateFCMTokenDTO updateFCMTokenDTO = UpdateFCMTokenDTO(
        //   (instance) => instance..fcmToken = fcmToken,
        // );

        // await accountService.updateFcmTokenService(updateFCMTokenDTO);
      });

      // / 5. Get APNs token specifically for iOS
      if (Platform.isIOS) {
        String? apnsToken = await _fcm.getAPNSToken();
        log('[APNs Token]: $apnsToken');
      }

      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);

      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        if (message.notification != null) {
          log('[FOREGROUND-PUSH-NOTIFICATION]');
          log('[NOTIFICATION-DATA] :: ${message.data}');
          log('[NOTIFICATION-DATA] :: ${message.notification!.body}');


          // Get.closeAllSnackbars();

          // customNotificationSnackbar(
          //   message: message.notification!.body!,
          //   title: capitalizeFirstLetter(message.notification!.title!),
          // );
        }
      });

      void handleTapNotification(BuildContext context, RemoteMessage message) {
        // final notificationData = message.data;
      }

      FirebaseMessaging.instance.getInitialMessage().then((message) {
        if (message != null) {
          handleTapNotification(context, message);
        }
      });

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        debugPrint(
          'onMessageOpenedApp: ${message.notification!.title.toString()}',
        );
        handleTapNotification(context, message);
      });
    } catch (error) {
      log('[FIREBASE-MESSAGE-INITIALIZATION-ERROR] :: $error');
    }
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  log('[BACKGROUND-PUSH-NOTIFICATION]');
  log('[BACKGROUND-PUSH-NOTIFICATION-TITLE] :: $message');
}
