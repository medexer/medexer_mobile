// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'donation_centre_days_of_work.g.dart';

/// DonationCentreDaysOfWork
///
/// Properties:
/// * [day] 
/// * [open] 
/// * [close] 
/// * [alwaysOpen] 
/// * [closed] 
@BuiltValue()
abstract class DonationCentreDaysOfWork implements Built<DonationCentreDaysOfWork, DonationCentreDaysOfWorkBuilder> {
  @BuiltValueField(wireName: r'day')
  String? get day;

  @BuiltValueField(wireName: r'open')
  String? get open;

  @BuiltValueField(wireName: r'close')
  String? get close;

  @BuiltValueField(wireName: r'alwaysOpen')
  bool? get alwaysOpen;

  @BuiltValueField(wireName: r'closed')
  bool? get closed;

  DonationCentreDaysOfWork._();

  factory DonationCentreDaysOfWork([void updates(DonationCentreDaysOfWorkBuilder b)]) = _$DonationCentreDaysOfWork;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DonationCentreDaysOfWorkBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DonationCentreDaysOfWork> get serializer => _$DonationCentreDaysOfWorkSerializer();
}

class _$DonationCentreDaysOfWorkSerializer implements PrimitiveSerializer<DonationCentreDaysOfWork> {
  @override
  final Iterable<Type> types = const [DonationCentreDaysOfWork, _$DonationCentreDaysOfWork];

  @override
  final String wireName = r'DonationCentreDaysOfWork';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DonationCentreDaysOfWork object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.day != null) {
      yield r'day';
      yield serializers.serialize(
        object.day,
        specifiedType: const FullType(String),
      );
    }
    if (object.open != null) {
      yield r'open';
      yield serializers.serialize(
        object.open,
        specifiedType: const FullType(String),
      );
    }
    if (object.close != null) {
      yield r'close';
      yield serializers.serialize(
        object.close,
        specifiedType: const FullType(String),
      );
    }
    if (object.alwaysOpen != null) {
      yield r'alwaysOpen';
      yield serializers.serialize(
        object.alwaysOpen,
        specifiedType: const FullType(bool),
      );
    }
    if (object.closed != null) {
      yield r'closed';
      yield serializers.serialize(
        object.closed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DonationCentreDaysOfWork object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DonationCentreDaysOfWorkBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'day':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.day = valueDes;
          break;
        case r'open':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.open = valueDes;
          break;
        case r'close':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.close = valueDes;
          break;
        case r'alwaysOpen':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.alwaysOpen = valueDes;
          break;
        case r'closed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.closed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DonationCentreDaysOfWork deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DonationCentreDaysOfWorkBuilder();
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

