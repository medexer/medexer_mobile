import 'package:test/test.dart';
import 'package:account_sdk/account_sdk.dart';


/// tests for MeApi
void main() {
  final instance = AccountSdk().getMeApi();

  group(MeApi, () {
    //Future<Account> accountControllerGetDetailedAccountInfo() async
    test('test accountControllerGetDetailedAccountInfo', () async {
      // TODO
    });

    //Future accountControllerUpdateAccountPassword(UpdateAccountPasswordDTO updateAccountPasswordDTO) async
    test('test accountControllerUpdateAccountPassword', () async {
      // TODO
    });

    //Future accountControllerUpdateFcmToken(UpdateFCMTokenDTO updateFCMTokenDTO) async
    test('test accountControllerUpdateFcmToken', () async {
      // TODO
    });

  });
}
