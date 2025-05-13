import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_upgrade_version/flutter_upgrade_version.dart';

class AppUpdateService {
  static final AppUpdateService _instance = AppUpdateService._internal();
  factory AppUpdateService() => _instance;
  AppUpdateService._internal();

  late PackageInfo _packageInfo;
  final InAppUpdateManager _manager = InAppUpdateManager();

  Future<void> initialize() async {
    await Future.delayed(const Duration(milliseconds: 4500));

    _packageInfo = await PackageManager.getPackageInfo();
    
    await checkForUpdate();
  }

  Future<void> checkForUpdate() async {
    if (Platform.isAndroid) {
      await _handleAndroidUpdate();
    } else if (Platform.isIOS) {
      await _handleIOSUpdate();
    }
  }

  Future<void> _handleAndroidUpdate() async {
    AppUpdateInfo? appUpdateInfo = await _manager.checkForUpdate();

    if (appUpdateInfo == null) return;

    if (appUpdateInfo.updateAvailability ==
        UpdateAvailability.developerTriggeredUpdateInProgress) {
      // If an in-app update is already running, resume the update.
      String? message = await _manager.startAnUpdate(
        type: AppUpdateType.immediate,
      );
      debugPrint(message ?? '');
    } else if (appUpdateInfo.updateAvailability ==
        UpdateAvailability.updateAvailable) {
      if (appUpdateInfo.immediateAllowed) {
        String? message = await _manager.startAnUpdate(
          type: AppUpdateType.immediate,
        );
        debugPrint(message ?? '');
      } else if (appUpdateInfo.flexibleAllowed) {
        String? message = await _manager.startAnUpdate(
          type: AppUpdateType.flexible,
        );
        debugPrint(message ?? '');
      } else {
        debugPrint(
            'Update available. Immediate & Flexible Update Flow not allowed');
      }
    }
  }

  Future<void> _handleIOSUpdate() async {
    final currentVersion = _packageInfo.version;

    final VersionInfo versionInfo = await UpgradeVersion.getiOSStoreVersion(
      packageInfo: _packageInfo,
    );

    final storeVersion = versionInfo.storeVersion;

    if (storeVersion != currentVersion) {
      await _manager.startAnUpdate(
        type: AppUpdateType.flexible,
      );
    }

    debugPrint(versionInfo.toJson().toString());
  }
}
