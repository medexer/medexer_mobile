// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_info.g.dart';

/// NotificationInfo
///
/// Properties:
/// * [id] - Notification ID
/// * [subject] - Notification subject
/// * [message] - Notification message
/// * [type] - Notification type
/// * [appointment] - Appointment ID
/// * [isRead] - Notification is read
@BuiltValue()
abstract class NotificationInfo implements Built<NotificationInfo, NotificationInfoBuilder> {
  /// Notification ID
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Notification subject
  @BuiltValueField(wireName: r'subject')
  String? get subject;

  /// Notification message
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Notification type
  @BuiltValueField(wireName: r'type')
  NotificationInfoTypeEnum? get type;
  // enum typeEnum {  default,  support_inquiry,  appointment_reminder,  appointment_confirmation,  };

  /// Appointment ID
  @BuiltValueField(wireName: r'appointment')
  String? get appointment;

  /// Notification is read
  @BuiltValueField(wireName: r'isRead')
  bool? get isRead;

  NotificationInfo._();

  factory NotificationInfo([void updates(NotificationInfoBuilder b)]) = _$NotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationInfo> get serializer => _$NotificationInfoSerializer();
}

class _$NotificationInfoSerializer implements PrimitiveSerializer<NotificationInfo> {
  @override
  final Iterable<Type> types = const [NotificationInfo, _$NotificationInfo];

  @override
  final String wireName = r'NotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NotificationInfoTypeEnum),
      );
    }
    if (object.appointment != null) {
      yield r'appointment';
      yield serializers.serialize(
        object.appointment,
        specifiedType: const FullType(String),
      );
    }
    if (object.isRead != null) {
      yield r'isRead';
      yield serializers.serialize(
        object.isRead,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationInfoBuilder result,
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
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationInfoTypeEnum),
          ) as NotificationInfoTypeEnum;
          result.type = valueDes;
          break;
        case r'appointment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appointment = valueDes;
          break;
        case r'isRead':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRead = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationInfoBuilder();
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

class NotificationInfoTypeEnum extends EnumClass {

  /// Notification type
  @BuiltValueEnumConst(wireName: r'default')
  static const NotificationInfoTypeEnum default_ = _$notificationInfoTypeEnum_default_;
  /// Notification type
  @BuiltValueEnumConst(wireName: r'support_inquiry')
  static const NotificationInfoTypeEnum supportInquiry = _$notificationInfoTypeEnum_supportInquiry;
  /// Notification type
  @BuiltValueEnumConst(wireName: r'appointment_reminder')
  static const NotificationInfoTypeEnum appointmentReminder = _$notificationInfoTypeEnum_appointmentReminder;
  /// Notification type
  @BuiltValueEnumConst(wireName: r'appointment_confirmation')
  static const NotificationInfoTypeEnum appointmentConfirmation = _$notificationInfoTypeEnum_appointmentConfirmation;

  static Serializer<NotificationInfoTypeEnum> get serializer => _$notificationInfoTypeEnumSerializer;

  const NotificationInfoTypeEnum._(String name): super(name);

  static BuiltSet<NotificationInfoTypeEnum> get values => _$notificationInfoTypeEnumValues;
  static NotificationInfoTypeEnum valueOf(String name) => _$notificationInfoTypeEnumValueOf(name);
}

