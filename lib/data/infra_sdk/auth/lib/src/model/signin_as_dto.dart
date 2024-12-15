// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signin_as_dto.g.dart';

/// SigninAsDTO
///
/// Properties:
/// * [email] - Account email.
/// * [password] - Account password.
/// * [accountType] 
@BuiltValue()
abstract class SigninAsDTO implements Built<SigninAsDTO, SigninAsDTOBuilder> {
  /// Account email.
  @BuiltValueField(wireName: r'email')
  String get email;

  /// Account password.
  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'accountType')
  SigninAsDTOAccountTypeEnum get accountType;
  // enum accountTypeEnum {  donation_center,  individual,  admin,  super_admin,  system,  };

  SigninAsDTO._();

  factory SigninAsDTO([void updates(SigninAsDTOBuilder b)]) = _$SigninAsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SigninAsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SigninAsDTO> get serializer => _$SigninAsDTOSerializer();
}

class _$SigninAsDTOSerializer implements PrimitiveSerializer<SigninAsDTO> {
  @override
  final Iterable<Type> types = const [SigninAsDTO, _$SigninAsDTO];

  @override
  final String wireName = r'SigninAsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SigninAsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'accountType';
    yield serializers.serialize(
      object.accountType,
      specifiedType: const FullType(SigninAsDTOAccountTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SigninAsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SigninAsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'accountType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SigninAsDTOAccountTypeEnum),
          ) as SigninAsDTOAccountTypeEnum;
          result.accountType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SigninAsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SigninAsDTOBuilder();
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

class SigninAsDTOAccountTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'donation_center')
  static const SigninAsDTOAccountTypeEnum donationCenter = _$signinAsDTOAccountTypeEnum_donationCenter;
  @BuiltValueEnumConst(wireName: r'individual')
  static const SigninAsDTOAccountTypeEnum individual = _$signinAsDTOAccountTypeEnum_individual;
  @BuiltValueEnumConst(wireName: r'admin')
  static const SigninAsDTOAccountTypeEnum admin = _$signinAsDTOAccountTypeEnum_admin;
  @BuiltValueEnumConst(wireName: r'super_admin')
  static const SigninAsDTOAccountTypeEnum superAdmin = _$signinAsDTOAccountTypeEnum_superAdmin;
  @BuiltValueEnumConst(wireName: r'system')
  static const SigninAsDTOAccountTypeEnum system = _$signinAsDTOAccountTypeEnum_system;

  static Serializer<SigninAsDTOAccountTypeEnum> get serializer => _$signinAsDTOAccountTypeEnumSerializer;

  const SigninAsDTOAccountTypeEnum._(String name): super(name);

  static BuiltSet<SigninAsDTOAccountTypeEnum> get values => _$signinAsDTOAccountTypeEnumValues;
  static SigninAsDTOAccountTypeEnum valueOf(String name) => _$signinAsDTOAccountTypeEnumValueOf(name);
}

