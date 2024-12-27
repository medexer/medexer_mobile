import 'package:test/test.dart';
import 'package:donor_sdk/donor_sdk.dart';


/// tests for AppointmentApi
void main() {
  final instance = DonorSdk().getAppointmentApi();

  group(AppointmentApi, () {
    //Future<AppointmentInfo> donorControllerCreateAppointment(num donationCenter, CreateAppointmentDTO createAppointmentDTO) async
    test('test donorControllerCreateAppointment', () async {
      // TODO
    });

    //Future<BuiltList<AppointmentInfo>> donorControllerGetCompletedAppointments() async
    test('test donorControllerGetCompletedAppointments', () async {
      // TODO
    });

    //Future<BuiltList<AppointmentInfo>> donorControllerGetPendingAppointments() async
    test('test donorControllerGetPendingAppointments', () async {
      // TODO
    });

  });
}
