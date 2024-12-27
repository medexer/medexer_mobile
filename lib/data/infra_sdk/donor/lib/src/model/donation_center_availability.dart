// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'donation_center_availability.g.dart';

/// DonationCenterAvailability
///
/// Properties:
/// * [date] - Date for availability
/// * [isOpen] - Whether the center is open on this date
/// * [availableTimeSlots] - Available time slots for appointments
@BuiltValue()
abstract class DonationCenterAvailability implements Built<DonationCenterAvailability, DonationCenterAvailabilityBuilder> {
  /// Date for availability
  @BuiltValueField(wireName: r'date')
  DateTime? get date;

  /// Whether the center is open on this date
  @BuiltValueField(wireName: r'isOpen')
  bool? get isOpen;

  /// Available time slots for appointments
  @BuiltValueField(wireName: r'availableTimeSlots')
  BuiltList<String>? get availableTimeSlots;

  DonationCenterAvailability._();

  factory DonationCenterAvailability([void updates(DonationCenterAvailabilityBuilder b)]) = _$DonationCenterAvailability;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DonationCenterAvailabilityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DonationCenterAvailability> get serializer => _$DonationCenterAvailabilitySerializer();
}

class _$DonationCenterAvailabilitySerializer implements PrimitiveSerializer<DonationCenterAvailability> {
  @override
  final Iterable<Type> types = const [DonationCenterAvailability, _$DonationCenterAvailability];

  @override
  final String wireName = r'DonationCenterAvailability';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DonationCenterAvailability object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.isOpen != null) {
      yield r'isOpen';
      yield serializers.serialize(
        object.isOpen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.availableTimeSlots != null) {
      yield r'availableTimeSlots';
      yield serializers.serialize(
        object.availableTimeSlots,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DonationCenterAvailability object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DonationCenterAvailabilityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'isOpen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isOpen = valueDes;
          break;
        case r'availableTimeSlots':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.availableTimeSlots.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DonationCenterAvailability deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DonationCenterAvailabilityBuilder();
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

