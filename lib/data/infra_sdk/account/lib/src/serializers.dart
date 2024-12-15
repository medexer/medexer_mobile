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
import 'package:account_sdk/src/date_serializer.dart';
import 'package:account_sdk/src/model/date.dart';

import 'package:account_sdk/src/model/account.dart';
import 'package:account_sdk/src/model/update_account_email_dto.dart';
import 'package:account_sdk/src/model/update_account_password_dto.dart';
import 'package:account_sdk/src/model/update_account_phone_dto.dart';
import 'package:account_sdk/src/model/update_fcm_token_dto.dart';
import 'package:account_sdk/src/model/verify_new_account_email_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  Account,
  UpdateAccountEmailDTO,
  UpdateAccountPasswordDTO,
  UpdateAccountPhoneDTO,
  UpdateFCMTokenDTO,
  VerifyNewAccountEmailDTO,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
