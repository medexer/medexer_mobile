// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'detailed_account_response.g.dart';

/// DetailedAccountResponse
///
/// Properties:
/// * [id] 
/// * [firstName] 
/// * [lastName] 
/// * [phone] 
/// * [email] 
/// * [state] 
/// * [stateArea] 
/// * [latitude] 
/// * [longitude] 
/// * [profilePhoto] 
/// * [accountType] 
/// * [status] 
/// * [fcmToken] 
/// * [referralCode] 
/// * [referredBy] 
/// * [lastLogin] 
/// * [lastDonationDate] 
/// * [inRecovery] 
/// * [bloodGroup] 
/// * [genotype] 
/// * [hasTattoos] 
/// * [isComplianceUploaded] 
@BuiltValue()
abstract class DetailedAccountResponse implements Built<DetailedAccountResponse, DetailedAccountResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  num get id;

  @BuiltValueField(wireName: r'firstName')
  String get firstName;

  @BuiltValueField(wireName: r'lastName')
  String get lastName;

  @BuiltValueField(wireName: r'phone')
  String get phone;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'state')
  String get state;

  @BuiltValueField(wireName: r'stateArea')
  String get stateArea;

  @BuiltValueField(wireName: r'latitude')
  String get latitude;

  @BuiltValueField(wireName: r'longitude')
  String get longitude;

  @BuiltValueField(wireName: r'profilePhoto')
  String get profilePhoto;

  @BuiltValueField(wireName: r'accountType')
  DetailedAccountResponseAccountTypeEnum get accountType;
  // enum accountTypeEnum {  donation_center,  individual,  admin,  super_admin,  system,  };

  @BuiltValueField(wireName: r'status')
  DetailedAccountResponseStatusEnum get status;
  // enum statusEnum {  pending,  active,  inactive,  shadow_banned,  disabled,  };

  @BuiltValueField(wireName: r'fcmToken')
  String get fcmToken;

  @BuiltValueField(wireName: r'referralCode')
  String get referralCode;

  @BuiltValueField(wireName: r'referredBy')
  String get referredBy;

  @BuiltValueField(wireName: r'lastLogin')
  DateTime get lastLogin;

  @BuiltValueField(wireName: r'lastDonationDate')
  DateTime get lastDonationDate;

  @BuiltValueField(wireName: r'inRecovery')
  bool get inRecovery;

  @BuiltValueField(wireName: r'bloodGroup')
  DetailedAccountResponseBloodGroupEnum get bloodGroup;
  // enum bloodGroupEnum {  A+,  A-,  B+,  B-,  AB+,  AB-,  O+,  O-,  };

  @BuiltValueField(wireName: r'genotype')
  DetailedAccountResponseGenotypeEnum get genotype;
  // enum genotypeEnum {  AA,  AS,  SS,  AC,  SC,  };

  @BuiltValueField(wireName: r'hasTattoos')
  bool get hasTattoos;

  @BuiltValueField(wireName: r'isComplianceUploaded')
  bool get isComplianceUploaded;

  DetailedAccountResponse._();

  factory DetailedAccountResponse([void updates(DetailedAccountResponseBuilder b)]) = _$DetailedAccountResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DetailedAccountResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DetailedAccountResponse> get serializer => _$DetailedAccountResponseSerializer();
}

class _$DetailedAccountResponseSerializer implements PrimitiveSerializer<DetailedAccountResponse> {
  @override
  final Iterable<Type> types = const [DetailedAccountResponse, _$DetailedAccountResponse];

  @override
  final String wireName = r'DetailedAccountResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DetailedAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(num),
    );
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
    yield r'phone';
    yield serializers.serialize(
      object.phone,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
    yield r'stateArea';
    yield serializers.serialize(
      object.stateArea,
      specifiedType: const FullType(String),
    );
    yield r'latitude';
    yield serializers.serialize(
      object.latitude,
      specifiedType: const FullType(String),
    );
    yield r'longitude';
    yield serializers.serialize(
      object.longitude,
      specifiedType: const FullType(String),
    );
    yield r'profilePhoto';
    yield serializers.serialize(
      object.profilePhoto,
      specifiedType: const FullType(String),
    );
    yield r'accountType';
    yield serializers.serialize(
      object.accountType,
      specifiedType: const FullType(DetailedAccountResponseAccountTypeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(DetailedAccountResponseStatusEnum),
    );
    yield r'fcmToken';
    yield serializers.serialize(
      object.fcmToken,
      specifiedType: const FullType(String),
    );
    yield r'referralCode';
    yield serializers.serialize(
      object.referralCode,
      specifiedType: const FullType(String),
    );
    yield r'referredBy';
    yield serializers.serialize(
      object.referredBy,
      specifiedType: const FullType(String),
    );
    yield r'lastLogin';
    yield serializers.serialize(
      object.lastLogin,
      specifiedType: const FullType(DateTime),
    );
    yield r'lastDonationDate';
    yield serializers.serialize(
      object.lastDonationDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'inRecovery';
    yield serializers.serialize(
      object.inRecovery,
      specifiedType: const FullType(bool),
    );
    yield r'bloodGroup';
    yield serializers.serialize(
      object.bloodGroup,
      specifiedType: const FullType(DetailedAccountResponseBloodGroupEnum),
    );
    yield r'genotype';
    yield serializers.serialize(
      object.genotype,
      specifiedType: const FullType(DetailedAccountResponseGenotypeEnum),
    );
    yield r'hasTattoos';
    yield serializers.serialize(
      object.hasTattoos,
      specifiedType: const FullType(bool),
    );
    yield r'isComplianceUploaded';
    yield serializers.serialize(
      object.isComplianceUploaded,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DetailedAccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DetailedAccountResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.id = valueDes;
          break;
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
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phone = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        case r'stateArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.stateArea = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.longitude = valueDes;
          break;
        case r'profilePhoto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profilePhoto = valueDes;
          break;
        case r'accountType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetailedAccountResponseAccountTypeEnum),
          ) as DetailedAccountResponseAccountTypeEnum;
          result.accountType = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetailedAccountResponseStatusEnum),
          ) as DetailedAccountResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'fcmToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fcmToken = valueDes;
          break;
        case r'referralCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.referralCode = valueDes;
          break;
        case r'referredBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.referredBy = valueDes;
          break;
        case r'lastLogin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastLogin = valueDes;
          break;
        case r'lastDonationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastDonationDate = valueDes;
          break;
        case r'inRecovery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.inRecovery = valueDes;
          break;
        case r'bloodGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetailedAccountResponseBloodGroupEnum),
          ) as DetailedAccountResponseBloodGroupEnum;
          result.bloodGroup = valueDes;
          break;
        case r'genotype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DetailedAccountResponseGenotypeEnum),
          ) as DetailedAccountResponseGenotypeEnum;
          result.genotype = valueDes;
          break;
        case r'hasTattoos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasTattoos = valueDes;
          break;
        case r'isComplianceUploaded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isComplianceUploaded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DetailedAccountResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetailedAccountResponseBuilder();
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

class DetailedAccountResponseAccountTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'donation_center')
  static const DetailedAccountResponseAccountTypeEnum donationCenter = _$detailedAccountResponseAccountTypeEnum_donationCenter;
  @BuiltValueEnumConst(wireName: r'individual')
  static const DetailedAccountResponseAccountTypeEnum individual = _$detailedAccountResponseAccountTypeEnum_individual;
  @BuiltValueEnumConst(wireName: r'admin')
  static const DetailedAccountResponseAccountTypeEnum admin = _$detailedAccountResponseAccountTypeEnum_admin;
  @BuiltValueEnumConst(wireName: r'super_admin')
  static const DetailedAccountResponseAccountTypeEnum superAdmin = _$detailedAccountResponseAccountTypeEnum_superAdmin;
  @BuiltValueEnumConst(wireName: r'system')
  static const DetailedAccountResponseAccountTypeEnum system = _$detailedAccountResponseAccountTypeEnum_system;

  static Serializer<DetailedAccountResponseAccountTypeEnum> get serializer => _$detailedAccountResponseAccountTypeEnumSerializer;

  const DetailedAccountResponseAccountTypeEnum._(String name): super(name);

  static BuiltSet<DetailedAccountResponseAccountTypeEnum> get values => _$detailedAccountResponseAccountTypeEnumValues;
  static DetailedAccountResponseAccountTypeEnum valueOf(String name) => _$detailedAccountResponseAccountTypeEnumValueOf(name);
}

class DetailedAccountResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const DetailedAccountResponseStatusEnum pending = _$detailedAccountResponseStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'active')
  static const DetailedAccountResponseStatusEnum active = _$detailedAccountResponseStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'inactive')
  static const DetailedAccountResponseStatusEnum inactive = _$detailedAccountResponseStatusEnum_inactive;
  @BuiltValueEnumConst(wireName: r'shadow_banned')
  static const DetailedAccountResponseStatusEnum shadowBanned = _$detailedAccountResponseStatusEnum_shadowBanned;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const DetailedAccountResponseStatusEnum disabled = _$detailedAccountResponseStatusEnum_disabled;

  static Serializer<DetailedAccountResponseStatusEnum> get serializer => _$detailedAccountResponseStatusEnumSerializer;

  const DetailedAccountResponseStatusEnum._(String name): super(name);

  static BuiltSet<DetailedAccountResponseStatusEnum> get values => _$detailedAccountResponseStatusEnumValues;
  static DetailedAccountResponseStatusEnum valueOf(String name) => _$detailedAccountResponseStatusEnumValueOf(name);
}

class DetailedAccountResponseBloodGroupEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'A+')
  static const DetailedAccountResponseBloodGroupEnum aPlus = _$detailedAccountResponseBloodGroupEnum_aPlus;
  @BuiltValueEnumConst(wireName: r'A-')
  static const DetailedAccountResponseBloodGroupEnum A_ = _$detailedAccountResponseBloodGroupEnum_A_;
  @BuiltValueEnumConst(wireName: r'B+')
  static const DetailedAccountResponseBloodGroupEnum bPlus = _$detailedAccountResponseBloodGroupEnum_bPlus;
  @BuiltValueEnumConst(wireName: r'B-')
  static const DetailedAccountResponseBloodGroupEnum B_ = _$detailedAccountResponseBloodGroupEnum_B_;
  @BuiltValueEnumConst(wireName: r'AB+')
  static const DetailedAccountResponseBloodGroupEnum aBPlus = _$detailedAccountResponseBloodGroupEnum_aBPlus;
  @BuiltValueEnumConst(wireName: r'AB-')
  static const DetailedAccountResponseBloodGroupEnum AB_ = _$detailedAccountResponseBloodGroupEnum_AB_;
  @BuiltValueEnumConst(wireName: r'O+')
  static const DetailedAccountResponseBloodGroupEnum oPlus = _$detailedAccountResponseBloodGroupEnum_oPlus;
  @BuiltValueEnumConst(wireName: r'O-')
  static const DetailedAccountResponseBloodGroupEnum O_ = _$detailedAccountResponseBloodGroupEnum_O_;

  static Serializer<DetailedAccountResponseBloodGroupEnum> get serializer => _$detailedAccountResponseBloodGroupEnumSerializer;

  const DetailedAccountResponseBloodGroupEnum._(String name): super(name);

  static BuiltSet<DetailedAccountResponseBloodGroupEnum> get values => _$detailedAccountResponseBloodGroupEnumValues;
  static DetailedAccountResponseBloodGroupEnum valueOf(String name) => _$detailedAccountResponseBloodGroupEnumValueOf(name);
}

class DetailedAccountResponseGenotypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'AA')
  static const DetailedAccountResponseGenotypeEnum AA = _$detailedAccountResponseGenotypeEnum_AA;
  @BuiltValueEnumConst(wireName: r'AS')
  static const DetailedAccountResponseGenotypeEnum AS = _$detailedAccountResponseGenotypeEnum_AS;
  @BuiltValueEnumConst(wireName: r'SS')
  static const DetailedAccountResponseGenotypeEnum SS = _$detailedAccountResponseGenotypeEnum_SS;
  @BuiltValueEnumConst(wireName: r'AC')
  static const DetailedAccountResponseGenotypeEnum AC = _$detailedAccountResponseGenotypeEnum_AC;
  @BuiltValueEnumConst(wireName: r'SC')
  static const DetailedAccountResponseGenotypeEnum SC = _$detailedAccountResponseGenotypeEnum_SC;

  static Serializer<DetailedAccountResponseGenotypeEnum> get serializer => _$detailedAccountResponseGenotypeEnumSerializer;

  const DetailedAccountResponseGenotypeEnum._(String name): super(name);

  static BuiltSet<DetailedAccountResponseGenotypeEnum> get values => _$detailedAccountResponseGenotypeEnumValues;
  static DetailedAccountResponseGenotypeEnum valueOf(String name) => _$detailedAccountResponseGenotypeEnumValueOf(name);
}

