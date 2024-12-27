import 'package:test/test.dart';
import 'package:donor_sdk/donor_sdk.dart';


/// tests for DonationCenterApi
void main() {
  final instance = DonorSdk().getDonationCenterApi();

  group(DonationCenterApi, () {
    //Future<BuiltList<DonationCentreDaysOfWork>> donorControllerGetDonationCenterDaysOfWork(num id) async
    test('test donorControllerGetDonationCenterDaysOfWork', () async {
      // TODO
    });

  });
}
