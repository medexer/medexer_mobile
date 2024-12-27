import 'package:test/test.dart';
import 'package:account_sdk/account_sdk.dart';


/// tests for NotificationsApi
void main() {
  final instance = AccountSdk().getNotificationsApi();

  group(NotificationsApi, () {
    //Future<BuiltList<NotificationInfo>> accountControllerGetNotifications() async
    test('test accountControllerGetNotifications', () async {
      // TODO
    });

  });
}
