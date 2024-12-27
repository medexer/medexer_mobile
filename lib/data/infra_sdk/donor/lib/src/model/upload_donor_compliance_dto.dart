// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upload_donor_compliance_dto.g.dart';

/// UploadDonorComplianceDTO
///
/// Properties:
/// * [bloodGroup] - Blood group of the donor.
/// * [genotype] - Genotype of the donor.
/// * [lastDonatedBloodDate] - Last donated blood date
/// * [identificationDocument] - Donor identification document url
/// * [hasTattoos] - Has tattoos
/// * [hasPreviouslyDonatedBlood] - Has previously donated blood e.g false
/// * [identificationType] - Donor identification document type
@BuiltValue()
abstract class UploadDonorComplianceDTO implements Built<UploadDonorComplianceDTO, UploadDonorComplianceDTOBuilder> {
  /// Blood group of the donor.
  @BuiltValueField(wireName: r'bloodGroup')
  UploadDonorComplianceDTOBloodGroupEnum get bloodGroup;
  // enum bloodGroupEnum {  A+,  A-,  B+,  B-,  AB+,  AB-,  O+,  O-,  };

  /// Genotype of the donor.
  @BuiltValueField(wireName: r'genotype')
  UploadDonorComplianceDTOGenotypeEnum get genotype;
  // enum genotypeEnum {  AA,  AS,  SS,  AC,  SC,  };

  /// Last donated blood date
  @BuiltValueField(wireName: r'lastDonatedBloodDate')
  DateTime get lastDonatedBloodDate;

  /// Donor identification document url
  @BuiltValueField(wireName: r'identificationDocument')
  String get identificationDocument;

  /// Has tattoos
  @BuiltValueField(wireName: r'hasTattoos')
  bool get hasTattoos;

  /// Has previously donated blood e.g false
  @BuiltValueField(wireName: r'hasPreviouslyDonatedBlood')
  bool get hasPreviouslyDonatedBlood;

  /// Donor identification document type
  @BuiltValueField(wireName: r'identificationType')
  UploadDonorComplianceDTOIdentificationTypeEnum get identificationType;
  // enum identificationTypeEnum {  passport,  voter_card,  national_identity_card,  };

  UploadDonorComplianceDTO._();

  factory UploadDonorComplianceDTO([void updates(UploadDonorComplianceDTOBuilder b)]) = _$UploadDonorComplianceDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UploadDonorComplianceDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UploadDonorComplianceDTO> get serializer => _$UploadDonorComplianceDTOSerializer();
}

class _$UploadDonorComplianceDTOSerializer implements PrimitiveSerializer<UploadDonorComplianceDTO> {
  @override
  final Iterable<Type> types = const [UploadDonorComplianceDTO, _$UploadDonorComplianceDTO];

  @override
  final String wireName = r'UploadDonorComplianceDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UploadDonorComplianceDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'bloodGroup';
    yield serializers.serialize(
      object.bloodGroup,
      specifiedType: const FullType(UploadDonorComplianceDTOBloodGroupEnum),
    );
    yield r'genotype';
    yield serializers.serialize(
      object.genotype,
      specifiedType: const FullType(UploadDonorComplianceDTOGenotypeEnum),
    );
    yield r'lastDonatedBloodDate';
    yield serializers.serialize(
      object.lastDonatedBloodDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'identificationDocument';
    yield serializers.serialize(
      object.identificationDocument,
      specifiedType: const FullType(String),
    );
    yield r'hasTattoos';
    yield serializers.serialize(
      object.hasTattoos,
      specifiedType: const FullType(bool),
    );
    yield r'hasPreviouslyDonatedBlood';
    yield serializers.serialize(
      object.hasPreviouslyDonatedBlood,
      specifiedType: const FullType(bool),
    );
    yield r'identificationType';
    yield serializers.serialize(
      object.identificationType,
      specifiedType: const FullType(UploadDonorComplianceDTOIdentificationTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UploadDonorComplianceDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UploadDonorComplianceDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bloodGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UploadDonorComplianceDTOBloodGroupEnum),
          ) as UploadDonorComplianceDTOBloodGroupEnum;
          result.bloodGroup = valueDes;
          break;
        case r'genotype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UploadDonorComplianceDTOGenotypeEnum),
          ) as UploadDonorComplianceDTOGenotypeEnum;
          result.genotype = valueDes;
          break;
        case r'lastDonatedBloodDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastDonatedBloodDate = valueDes;
          break;
        case r'identificationDocument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.identificationDocument = valueDes;
          break;
        case r'hasTattoos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasTattoos = valueDes;
          break;
        case r'hasPreviouslyDonatedBlood':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPreviouslyDonatedBlood = valueDes;
          break;
        case r'identificationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UploadDonorComplianceDTOIdentificationTypeEnum),
          ) as UploadDonorComplianceDTOIdentificationTypeEnum;
          result.identificationType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UploadDonorComplianceDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadDonorComplianceDTOBuilder();
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

class UploadDonorComplianceDTOBloodGroupEnum extends EnumClass {

  /// Blood group of the donor.
  @BuiltValueEnumConst(wireName: r'A+')
  static const UploadDonorComplianceDTOBloodGroupEnum aPlus = _$uploadDonorComplianceDTOBloodGroupEnum_aPlus;
  /// Blood group of the donor.
  @BuiltValueEnumConst(wireName: r'A-')
  static const UploadDonorComplianceDTOBloodGroupEnum A_ = _$uploadDonorComplianceDTOBloodGroupEnum_A_;
  /// Blood group of the donor.
  @BuiltValueEnumConst(wireName: r'B+')
  static const UploadDonorComplianceDTOBloodGroupEnum bPlus = _$uploadDonorComplianceDTOBloodGroupEnum_bPlus;
  /// Blood group of the donor.
  @BuiltValueEnumConst(wireName: r'B-')
  static const UploadDonorComplianceDTOBloodGroupEnum B_ = _$uploadDonorComplianceDTOBloodGroupEnum_B_;
  /// Blood group of the donor.
  @BuiltValueEnumConst(wireName: r'AB+')
  static const UploadDonorComplianceDTOBloodGroupEnum aBPlus = _$uploadDonorComplianceDTOBloodGroupEnum_aBPlus;
  /// Blood group of the donor.
  @BuiltValueEnumConst(wireName: r'AB-')
  static const UploadDonorComplianceDTOBloodGroupEnum AB_ = _$uploadDonorComplianceDTOBloodGroupEnum_AB_;
  /// Blood group of the donor.
  @BuiltValueEnumConst(wireName: r'O+')
  static const UploadDonorComplianceDTOBloodGroupEnum oPlus = _$uploadDonorComplianceDTOBloodGroupEnum_oPlus;
  /// Blood group of the donor.
  @BuiltValueEnumConst(wireName: r'O-')
  static const UploadDonorComplianceDTOBloodGroupEnum O_ = _$uploadDonorComplianceDTOBloodGroupEnum_O_;

  static Serializer<UploadDonorComplianceDTOBloodGroupEnum> get serializer => _$uploadDonorComplianceDTOBloodGroupEnumSerializer;

  const UploadDonorComplianceDTOBloodGroupEnum._(String name): super(name);

  static BuiltSet<UploadDonorComplianceDTOBloodGroupEnum> get values => _$uploadDonorComplianceDTOBloodGroupEnumValues;
  static UploadDonorComplianceDTOBloodGroupEnum valueOf(String name) => _$uploadDonorComplianceDTOBloodGroupEnumValueOf(name);
}

class UploadDonorComplianceDTOGenotypeEnum extends EnumClass {

  /// Genotype of the donor.
  @BuiltValueEnumConst(wireName: r'AA')
  static const UploadDonorComplianceDTOGenotypeEnum AA = _$uploadDonorComplianceDTOGenotypeEnum_AA;
  /// Genotype of the donor.
  @BuiltValueEnumConst(wireName: r'AS')
  static const UploadDonorComplianceDTOGenotypeEnum AS = _$uploadDonorComplianceDTOGenotypeEnum_AS;
  /// Genotype of the donor.
  @BuiltValueEnumConst(wireName: r'SS')
  static const UploadDonorComplianceDTOGenotypeEnum SS = _$uploadDonorComplianceDTOGenotypeEnum_SS;
  /// Genotype of the donor.
  @BuiltValueEnumConst(wireName: r'AC')
  static const UploadDonorComplianceDTOGenotypeEnum AC = _$uploadDonorComplianceDTOGenotypeEnum_AC;
  /// Genotype of the donor.
  @BuiltValueEnumConst(wireName: r'SC')
  static const UploadDonorComplianceDTOGenotypeEnum SC = _$uploadDonorComplianceDTOGenotypeEnum_SC;

  static Serializer<UploadDonorComplianceDTOGenotypeEnum> get serializer => _$uploadDonorComplianceDTOGenotypeEnumSerializer;

  const UploadDonorComplianceDTOGenotypeEnum._(String name): super(name);

  static BuiltSet<UploadDonorComplianceDTOGenotypeEnum> get values => _$uploadDonorComplianceDTOGenotypeEnumValues;
  static UploadDonorComplianceDTOGenotypeEnum valueOf(String name) => _$uploadDonorComplianceDTOGenotypeEnumValueOf(name);
}

class UploadDonorComplianceDTOIdentificationTypeEnum extends EnumClass {

  /// Donor identification document type
  @BuiltValueEnumConst(wireName: r'passport')
  static const UploadDonorComplianceDTOIdentificationTypeEnum passport = _$uploadDonorComplianceDTOIdentificationTypeEnum_passport;
  /// Donor identification document type
  @BuiltValueEnumConst(wireName: r'voter_card')
  static const UploadDonorComplianceDTOIdentificationTypeEnum voterCard = _$uploadDonorComplianceDTOIdentificationTypeEnum_voterCard;
  /// Donor identification document type
  @BuiltValueEnumConst(wireName: r'national_identity_card')
  static const UploadDonorComplianceDTOIdentificationTypeEnum nationalIdentityCard = _$uploadDonorComplianceDTOIdentificationTypeEnum_nationalIdentityCard;

  static Serializer<UploadDonorComplianceDTOIdentificationTypeEnum> get serializer => _$uploadDonorComplianceDTOIdentificationTypeEnumSerializer;

  const UploadDonorComplianceDTOIdentificationTypeEnum._(String name): super(name);

  static BuiltSet<UploadDonorComplianceDTOIdentificationTypeEnum> get values => _$uploadDonorComplianceDTOIdentificationTypeEnumValues;
  static UploadDonorComplianceDTOIdentificationTypeEnum valueOf(String name) => _$uploadDonorComplianceDTOIdentificationTypeEnumValueOf(name);
}

