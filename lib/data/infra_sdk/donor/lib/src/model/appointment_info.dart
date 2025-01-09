// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'appointment_info.g.dart';

/// AppointmentInfo
///
/// Properties:
/// * [id] 
/// * [appointmentId] 
/// * [time] 
/// * [date] 
/// * [status] 
/// * [verificationCode] 
/// * [centerName] 
/// * [centerCoverPhoto] 
/// * [centerAddress] 
/// * [centerPhone] 
/// * [centerEmail] 
/// * [centerLatitude] 
/// * [centerLongitude] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class AppointmentInfo implements Built<AppointmentInfo, AppointmentInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'appointmentId')
  String get appointmentId;

  @BuiltValueField(wireName: r'time')
  String get time;

  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @BuiltValueField(wireName: r'status')
  AppointmentInfoStatusEnum get status;
  // enum statusEnum {  pending,  accepted,  processing,  completed,  cancelled,  missed,  no_show,  rejected,  expired,  };

  @BuiltValueField(wireName: r'verificationCode')
  String get verificationCode;

  @BuiltValueField(wireName: r'centerName')
  String get centerName;

  @BuiltValueField(wireName: r'centerCoverPhoto')
  String get centerCoverPhoto;

  @BuiltValueField(wireName: r'centerAddress')
  String get centerAddress;

  @BuiltValueField(wireName: r'centerPhone')
  String get centerPhone;

  @BuiltValueField(wireName: r'centerEmail')
  String get centerEmail;

  @BuiltValueField(wireName: r'centerLatitude')
  String get centerLatitude;

  @BuiltValueField(wireName: r'centerLongitude')
  String get centerLongitude;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  AppointmentInfo._();

  factory AppointmentInfo([void updates(AppointmentInfoBuilder b)]) = _$AppointmentInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppointmentInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AppointmentInfo> get serializer => _$AppointmentInfoSerializer();
}

class _$AppointmentInfoSerializer implements PrimitiveSerializer<AppointmentInfo> {
  @override
  final Iterable<Type> types = const [AppointmentInfo, _$AppointmentInfo];

  @override
  final String wireName = r'AppointmentInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AppointmentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'appointmentId';
    yield serializers.serialize(
      object.appointmentId,
      specifiedType: const FullType(String),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AppointmentInfoStatusEnum),
    );
    yield r'verificationCode';
    yield serializers.serialize(
      object.verificationCode,
      specifiedType: const FullType(String),
    );
    yield r'centerName';
    yield serializers.serialize(
      object.centerName,
      specifiedType: const FullType(String),
    );
    yield r'centerCoverPhoto';
    yield serializers.serialize(
      object.centerCoverPhoto,
      specifiedType: const FullType(String),
    );
    yield r'centerAddress';
    yield serializers.serialize(
      object.centerAddress,
      specifiedType: const FullType(String),
    );
    yield r'centerPhone';
    yield serializers.serialize(
      object.centerPhone,
      specifiedType: const FullType(String),
    );
    yield r'centerEmail';
    yield serializers.serialize(
      object.centerEmail,
      specifiedType: const FullType(String),
    );
    yield r'centerLatitude';
    yield serializers.serialize(
      object.centerLatitude,
      specifiedType: const FullType(String),
    );
    yield r'centerLongitude';
    yield serializers.serialize(
      object.centerLongitude,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AppointmentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AppointmentInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'appointmentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appointmentId = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.time = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AppointmentInfoStatusEnum),
          ) as AppointmentInfoStatusEnum;
          result.status = valueDes;
          break;
        case r'verificationCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verificationCode = valueDes;
          break;
        case r'centerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerName = valueDes;
          break;
        case r'centerCoverPhoto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerCoverPhoto = valueDes;
          break;
        case r'centerAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerAddress = valueDes;
          break;
        case r'centerPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerPhone = valueDes;
          break;
        case r'centerEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerEmail = valueDes;
          break;
        case r'centerLatitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerLatitude = valueDes;
          break;
        case r'centerLongitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerLongitude = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AppointmentInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AppointmentInfoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class AppointmentInfoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const AppointmentInfoStatusEnum pending = _$appointmentInfoStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'accepted')
  static const AppointmentInfoStatusEnum accepted = _$appointmentInfoStatusEnum_accepted;
  @BuiltValueEnumConst(wireName: r'processing')
  static const AppointmentInfoStatusEnum processing = _$appointmentInfoStatusEnum_processing;
  @BuiltValueEnumConst(wireName: r'completed')
  static const AppointmentInfoStatusEnum completed = _$appointmentInfoStatusEnum_completed;
  @BuiltValueEnumConst(wireName: r'cancelled')
  static const AppointmentInfoStatusEnum cancelled = _$appointmentInfoStatusEnum_cancelled;
  @BuiltValueEnumConst(wireName: r'missed')
  static const AppointmentInfoStatusEnum missed = _$appointmentInfoStatusEnum_missed;
  @BuiltValueEnumConst(wireName: r'no_show')
  static const AppointmentInfoStatusEnum noShow = _$appointmentInfoStatusEnum_noShow;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const AppointmentInfoStatusEnum rejected = _$appointmentInfoStatusEnum_rejected;
  @BuiltValueEnumConst(wireName: r'expired')
  static const AppointmentInfoStatusEnum expired = _$appointmentInfoStatusEnum_expired;

  static Serializer<AppointmentInfoStatusEnum> get serializer => _$appointmentInfoStatusEnumSerializer;

  const AppointmentInfoStatusEnum._(String name): super(name);

  static BuiltSet<AppointmentInfoStatusEnum> get values => _$appointmentInfoStatusEnumValues;
  static AppointmentInfoStatusEnum valueOf(String name) => _$appointmentInfoStatusEnumValueOf(name);
}

