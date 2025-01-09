// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_donation_center_rating_dto.g.dart';

/// AddDonationCenterRatingDTO
///
/// Properties:
/// * [rating] - Rating e.g 4
/// * [comment] - Comment e.g This is a great donation center.
@BuiltValue()
abstract class AddDonationCenterRatingDTO implements Built<AddDonationCenterRatingDTO, AddDonationCenterRatingDTOBuilder> {
  /// Rating e.g 4
  @BuiltValueField(wireName: r'rating')
  String get rating;

  /// Comment e.g This is a great donation center.
  @BuiltValueField(wireName: r'comment')
  String get comment;

  AddDonationCenterRatingDTO._();

  factory AddDonationCenterRatingDTO([void updates(AddDonationCenterRatingDTOBuilder b)]) = _$AddDonationCenterRatingDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddDonationCenterRatingDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddDonationCenterRatingDTO> get serializer => _$AddDonationCenterRatingDTOSerializer();
}

class _$AddDonationCenterRatingDTOSerializer implements PrimitiveSerializer<AddDonationCenterRatingDTO> {
  @override
  final Iterable<Type> types = const [AddDonationCenterRatingDTO, _$AddDonationCenterRatingDTO];

  @override
  final String wireName = r'AddDonationCenterRatingDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddDonationCenterRatingDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rating';
    yield serializers.serialize(
      object.rating,
      specifiedType: const FullType(String),
    );
    yield r'comment';
    yield serializers.serialize(
      object.comment,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddDonationCenterRatingDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddDonationCenterRatingDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rating = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddDonationCenterRatingDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddDonationCenterRatingDTOBuilder();
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

