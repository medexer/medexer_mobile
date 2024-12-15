import 'package:test/test.dart';
import 'package:donor_sdk/donor_sdk.dart';


/// tests for ComplianceApi
void main() {
  final instance = DonorSdk().getComplianceApi();

  group(ComplianceApi, () {
    //Future donorControllerUploadCompliance(UploadDonorComplianceDTO uploadDonorComplianceDTO) async
    test('test donorControllerUploadCompliance', () async {
      // TODO
    });

  });
}
