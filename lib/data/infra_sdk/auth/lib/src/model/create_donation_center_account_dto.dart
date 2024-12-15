// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_donation_center_account_dto.g.dart';

/// CreateDonationCenterAccountDTO
///
/// Properties:
/// * [firstName] - First name of the donation center administrator.
/// * [lastName] - Last name of the donation center administrator.
/// * [email] - Email address of the donation center.
/// * [password] - Password for the donation center account.
/// * [name] - Name of the donation center.
/// * [phone] - Phone number of the donation center.
@BuiltValue()
abstract class CreateDonationCenterAccountDTO implements Built<CreateDonationCenterAccountDTO, CreateDonationCenterAccountDTOBuilder> {
  /// First name of the donation center administrator.
  @BuiltValueField(wireName: r'firstName')
  String get firstName;

  /// Last name of the donation center administrator.
  @BuiltValueField(wireName: r'lastName')
  String get lastName;

  /// Email address of the donation center.
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Password for the donation center account.
  @BuiltValueField(wireName: r'password')
  String get password;

  /// Name of the donation center.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Phone number of the donation center.
  @BuiltValueField(wireName: r'phone')
  String get phone;

  CreateDonationCenterAccountDTO._();

  factory CreateDonationCenterAccountDTO([void updates(CreateDonationCenterAccountDTOBuilder b)]) = _$CreateDonationCenterAccountDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDonationCenterAccountDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDonationCenterAccountDTO> get serializer => _$CreateDonationCenterAccountDTOSerializer();
}

class _$CreateDonationCenterAccountDTOSerializer implements PrimitiveSerializer<CreateDonationCenterAccountDTO> {
  @override
  final Iterable<Type> types = const [CreateDonationCenterAccountDTO, _$CreateDonationCenterAccountDTO];

  @override
  final String wireName = r'CreateDonationCenterAccountDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDonationCenterAccountDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'firstName';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'lastName';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateDonationCenterAccountDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateDonationCenterAccountDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateDonationCenterAccountDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDonationCenterAccountDTOBuilder();
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

