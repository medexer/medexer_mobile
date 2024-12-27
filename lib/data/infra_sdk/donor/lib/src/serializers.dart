// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:donor_sdk/src/date_serializer.dart';
import 'package:donor_sdk/src/model/date.dart';

import 'package:donor_sdk/src/model/account_info.dart';
import 'package:donor_sdk/src/model/appointment_info.dart';
import 'package:donor_sdk/src/model/create_appointment_dto.dart';
import 'package:donor_sdk/src/model/donation_center_availability.dart';
import 'package:donor_sdk/src/model/donation_center_info.dart';
import 'package:donor_sdk/src/model/donation_centre_days_of_work.dart';
import 'package:donor_sdk/src/model/upload_donor_compliance_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  AccountInfo,
  AppointmentInfo,
  CreateAppointmentDTO,
  DonationCenterAvailability,
  DonationCenterInfo,
  DonationCentreDaysOfWork,
  UploadDonorComplianceDTO,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DonationCenterInfo)]),
        () => ListBuilder<DonationCenterInfo>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(AppointmentInfo)]),
        () => ListBuilder<AppointmentInfo>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DonationCenterAvailability)]),
        () => ListBuilder<DonationCenterAvailability>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(DonationCentreDaysOfWork)]),
        () => ListBuilder<DonationCentreDaysOfWork>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
