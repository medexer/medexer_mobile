import 'package:test/test.dart';
import 'package:donor_sdk/donor_sdk.dart';


/// tests for FeedApi
void main() {
  final instance = DonorSdk().getFeedApi();

  group(FeedApi, () {
    //Future<DonationCenterInfo> donorControllerGetDonationCenters() async
    test('test donorControllerGetDonationCenters', () async {
      // TODO
    });

  });
}
