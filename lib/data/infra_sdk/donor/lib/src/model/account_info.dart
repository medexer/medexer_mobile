// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_info.g.dart';

/// AccountInfo
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
/// * [lastDonationDate] 
/// * [inRecovery] 
/// * [bloodGroup] 
/// * [genotype] 
/// * [hasTattoos] 
/// * [isComplianceUploaded] 
@BuiltValue()
abstract class AccountInfo implements Built<AccountInfo, AccountInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

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
  AccountInfoAccountTypeEnum get accountType;
  // enum accountTypeEnum {  donation_center,  individual,  admin,  super_admin,  system,  };

  @BuiltValueField(wireName: r'status')
  AccountInfoStatusEnum get status;
  // enum statusEnum {  pending,  active,  inactive,  shadow_banned,  disabled,  };

  @BuiltValueField(wireName: r'fcmToken')
  String get fcmToken;

  @BuiltValueField(wireName: r'referralCode')
  String get referralCode;

  @BuiltValueField(wireName: r'referredBy')
  String get referredBy;

  @BuiltValueField(wireName: r'lastDonationDate')
  String get lastDonationDate;

  @BuiltValueField(wireName: r'inRecovery')
  bool get inRecovery;

  @BuiltValueField(wireName: r'bloodGroup')
  AccountInfoBloodGroupEnum get bloodGroup;
  // enum bloodGroupEnum {  A+,  A-,  B+,  B-,  AB+,  AB-,  O+,  O-,  };

  @BuiltValueField(wireName: r'genotype')
  AccountInfoGenotypeEnum get genotype;
  // enum genotypeEnum {  AA,  AS,  SS,  AC,  SC,  };

  @BuiltValueField(wireName: r'hasTattoos')
  bool get hasTattoos;

  @BuiltValueField(wireName: r'isComplianceUploaded')
  bool get isComplianceUploaded;

  AccountInfo._();

  factory AccountInfo([void updates(AccountInfoBuilder b)]) = _$AccountInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountInfo> get serializer => _$AccountInfoSerializer();
}

class _$AccountInfoSerializer implements PrimitiveSerializer<AccountInfo> {
  @override
  final Iterable<Type> types = const [AccountInfo, _$AccountInfo];

  @override
  final String wireName = r'AccountInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
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
      specifiedType: const FullType(AccountInfoAccountTypeEnum),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AccountInfoStatusEnum),
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
    yield r'lastDonationDate';
    yield serializers.serialize(
      object.lastDonationDate,
      specifiedType: const FullType(String),
    );
    yield r'inRecovery';
    yield serializers.serialize(
      object.inRecovery,
      specifiedType: const FullType(bool),
    );
    yield r'bloodGroup';
    yield serializers.serialize(
      object.bloodGroup,
      specifiedType: const FullType(AccountInfoBloodGroupEnum),
    );
    yield r'genotype';
    yield serializers.serialize(
      object.genotype,
      specifiedType: const FullType(AccountInfoGenotypeEnum),
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
    AccountInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountInfoBuilder result,
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
            specifiedType: const FullType(AccountInfoAccountTypeEnum),
          ) as AccountInfoAccountTypeEnum;
          result.accountType = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountInfoStatusEnum),
          ) as AccountInfoStatusEnum;
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
        case r'lastDonationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
            specifiedType: const FullType(AccountInfoBloodGroupEnum),
          ) as AccountInfoBloodGroupEnum;
          result.bloodGroup = valueDes;
          break;
        case r'genotype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountInfoGenotypeEnum),
          ) as AccountInfoGenotypeEnum;
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
  AccountInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountInfoBuilder();
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

class AccountInfoAccountTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'donation_center')
  static const AccountInfoAccountTypeEnum donationCenter = _$accountInfoAccountTypeEnum_donationCenter;
  @BuiltValueEnumConst(wireName: r'individual')
  static const AccountInfoAccountTypeEnum individual = _$accountInfoAccountTypeEnum_individual;
  @BuiltValueEnumConst(wireName: r'admin')
  static const AccountInfoAccountTypeEnum admin = _$accountInfoAccountTypeEnum_admin;
  @BuiltValueEnumConst(wireName: r'super_admin')
  static const AccountInfoAccountTypeEnum superAdmin = _$accountInfoAccountTypeEnum_superAdmin;
  @BuiltValueEnumConst(wireName: r'system')
  static const AccountInfoAccountTypeEnum system = _$accountInfoAccountTypeEnum_system;

  static Serializer<AccountInfoAccountTypeEnum> get serializer => _$accountInfoAccountTypeEnumSerializer;

  const AccountInfoAccountTypeEnum._(String name): super(name);

  static BuiltSet<AccountInfoAccountTypeEnum> get values => _$accountInfoAccountTypeEnumValues;
  static AccountInfoAccountTypeEnum valueOf(String name) => _$accountInfoAccountTypeEnumValueOf(name);
}

class AccountInfoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const AccountInfoStatusEnum pending = _$accountInfoStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'active')
  static const AccountInfoStatusEnum active = _$accountInfoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'inactive')
  static const AccountInfoStatusEnum inactive = _$accountInfoStatusEnum_inactive;
  @BuiltValueEnumConst(wireName: r'shadow_banned')
  static const AccountInfoStatusEnum shadowBanned = _$accountInfoStatusEnum_shadowBanned;
  @BuiltValueEnumConst(wireName: r'disabled')
  static const AccountInfoStatusEnum disabled = _$accountInfoStatusEnum_disabled;

  static Serializer<AccountInfoStatusEnum> get serializer => _$accountInfoStatusEnumSerializer;

  const AccountInfoStatusEnum._(String name): super(name);

  static BuiltSet<AccountInfoStatusEnum> get values => _$accountInfoStatusEnumValues;
  static AccountInfoStatusEnum valueOf(String name) => _$accountInfoStatusEnumValueOf(name);
}

class AccountInfoBloodGroupEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'A+')
  static const AccountInfoBloodGroupEnum aPlus = _$accountInfoBloodGroupEnum_aPlus;
  @BuiltValueEnumConst(wireName: r'A-')
  static const AccountInfoBloodGroupEnum A_ = _$accountInfoBloodGroupEnum_A_;
  @BuiltValueEnumConst(wireName: r'B+')
  static const AccountInfoBloodGroupEnum bPlus = _$accountInfoBloodGroupEnum_bPlus;
  @BuiltValueEnumConst(wireName: r'B-')
  static const AccountInfoBloodGroupEnum B_ = _$accountInfoBloodGroupEnum_B_;
  @BuiltValueEnumConst(wireName: r'AB+')
  static const AccountInfoBloodGroupEnum aBPlus = _$accountInfoBloodGroupEnum_aBPlus;
  @BuiltValueEnumConst(wireName: r'AB-')
  static const AccountInfoBloodGroupEnum AB_ = _$accountInfoBloodGroupEnum_AB_;
  @BuiltValueEnumConst(wireName: r'O+')
  static const AccountInfoBloodGroupEnum oPlus = _$accountInfoBloodGroupEnum_oPlus;
  @BuiltValueEnumConst(wireName: r'O-')
  static const AccountInfoBloodGroupEnum O_ = _$accountInfoBloodGroupEnum_O_;

  static Serializer<AccountInfoBloodGroupEnum> get serializer => _$accountInfoBloodGroupEnumSerializer;

  const AccountInfoBloodGroupEnum._(String name): super(name);

  static BuiltSet<AccountInfoBloodGroupEnum> get values => _$accountInfoBloodGroupEnumValues;
  static AccountInfoBloodGroupEnum valueOf(String name) => _$accountInfoBloodGroupEnumValueOf(name);
}

class AccountInfoGenotypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'AA')
  static const AccountInfoGenotypeEnum AA = _$accountInfoGenotypeEnum_AA;
  @BuiltValueEnumConst(wireName: r'AS')
  static const AccountInfoGenotypeEnum AS = _$accountInfoGenotypeEnum_AS;
  @BuiltValueEnumConst(wireName: r'SS')
  static const AccountInfoGenotypeEnum SS = _$accountInfoGenotypeEnum_SS;
  @BuiltValueEnumConst(wireName: r'AC')
  static const AccountInfoGenotypeEnum AC = _$accountInfoGenotypeEnum_AC;
  @BuiltValueEnumConst(wireName: r'SC')
  static const AccountInfoGenotypeEnum SC = _$accountInfoGenotypeEnum_SC;

  static Serializer<AccountInfoGenotypeEnum> get serializer => _$accountInfoGenotypeEnumSerializer;

  const AccountInfoGenotypeEnum._(String name): super(name);

  static BuiltSet<AccountInfoGenotypeEnum> get values => _$accountInfoGenotypeEnumValues;
  static AccountInfoGenotypeEnum valueOf(String name) => _$accountInfoGenotypeEnumValueOf(name);
}

