// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_appointment_dto.g.dart';

/// CreateAppointmentDTO
///
/// Properties:
/// * [time] - Appointment time e.g 10:00 AM.
/// * [date] - Appointment date e.g 2024-01-01.
/// * [donationCenter] - Appointment donation center id e.g 14.
@BuiltValue()
abstract class CreateAppointmentDTO implements Built<CreateAppointmentDTO, CreateAppointmentDTOBuilder> {
  /// Appointment time e.g 10:00 AM.
  @BuiltValueField(wireName: r'time')
  String get time;

  /// Appointment date e.g 2024-01-01.
  @BuiltValueField(wireName: r'date')
  String get date;

  /// Appointment donation center id e.g 14.
  @BuiltValueField(wireName: r'donationCenter')
  num get donationCenter;

  CreateAppointmentDTO._();

  factory CreateAppointmentDTO([void updates(CreateAppointmentDTOBuilder b)]) = _$CreateAppointmentDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAppointmentDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAppointmentDTO> get serializer => _$CreateAppointmentDTOSerializer();
}

class _$CreateAppointmentDTOSerializer implements PrimitiveSerializer<CreateAppointmentDTO> {
  @override
  final Iterable<Type> types = const [CreateAppointmentDTO, _$CreateAppointmentDTO];

  @override
  final String wireName = r'CreateAppointmentDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAppointmentDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(String),
    );
    yield r'donationCenter';
    yield serializers.serialize(
      object.donationCenter,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAppointmentDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateAppointmentDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(String),
          ) as String;
          result.date = valueDes;
          break;
        case r'donationCenter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.donationCenter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateAppointmentDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAppointmentDTOBuilder();
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

