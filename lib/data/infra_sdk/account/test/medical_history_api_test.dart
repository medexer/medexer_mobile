import 'package:test/test.dart';
import 'package:account_sdk/account_sdk.dart';


/// tests for MedicalHistoryApi
void main() {
  final instance = AccountSdk().getMedicalHistoryApi();

  group(MedicalHistoryApi, () {
    //Future<BuiltList<MedicalHistoryInfo>> accountControllerGetMedicalHistory() async
    test('test accountControllerGetMedicalHistory', () async {
      // TODO
    });

  });
}
