// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'medical_history_info.g.dart';

/// MedicalHistoryInfo
///
/// Properties:
/// * [id] 
/// * [bloodGroup] 
/// * [genotype] 
/// * [hiv1] 
/// * [hiv2] 
/// * [hepatitisB] 
/// * [hepatitisC] 
/// * [syphilis] 
/// * [appointmentId] 
/// * [centerName] 
/// * [centerCoverPhoto] 
/// * [centerAddress] 
/// * [centerPhone] 
/// * [centerEmail] 
/// * [centerLatitude] 
/// * [centerLongitude] 
/// * [createdAt] 
@BuiltValue()
abstract class MedicalHistoryInfo implements Built<MedicalHistoryInfo, MedicalHistoryInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'bloodGroup')
  String get bloodGroup;

  @BuiltValueField(wireName: r'genotype')
  String get genotype;

  @BuiltValueField(wireName: r'hiv1')
  bool get hiv1;

  @BuiltValueField(wireName: r'hiv2')
  bool get hiv2;

  @BuiltValueField(wireName: r'hepatitisB')
  bool get hepatitisB;

  @BuiltValueField(wireName: r'hepatitisC')
  bool get hepatitisC;

  @BuiltValueField(wireName: r'syphilis')
  bool get syphilis;

  @BuiltValueField(wireName: r'appointmentId')
  String get appointmentId;

  @BuiltValueField(wireName: r'centerName')
  String get centerName;

  @BuiltValueField(wireName: r'centerCoverPhoto')
  String get centerCoverPhoto;

  @BuiltValueField(wireName: r'centerAddress')
  String get centerAddress;

  @BuiltValueField(wireName: r'centerPhone')
  String get centerPhone;

  @BuiltValueField(wireName: r'centerEmail')
  String get centerEmail;

  @BuiltValueField(wireName: r'centerLatitude')
  String get centerLatitude;

  @BuiltValueField(wireName: r'centerLongitude')
  String get centerLongitude;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  MedicalHistoryInfo._();

  factory MedicalHistoryInfo([void updates(MedicalHistoryInfoBuilder b)]) = _$MedicalHistoryInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MedicalHistoryInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MedicalHistoryInfo> get serializer => _$MedicalHistoryInfoSerializer();
}

class _$MedicalHistoryInfoSerializer implements PrimitiveSerializer<MedicalHistoryInfo> {
  @override
  final Iterable<Type> types = const [MedicalHistoryInfo, _$MedicalHistoryInfo];

  @override
  final String wireName = r'MedicalHistoryInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MedicalHistoryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'bloodGroup';
    yield serializers.serialize(
      object.bloodGroup,
      specifiedType: const FullType(String),
    );
    yield r'genotype';
    yield serializers.serialize(
      object.genotype,
      specifiedType: const FullType(String),
    );
    yield r'hiv1';
    yield serializers.serialize(
      object.hiv1,
      specifiedType: const FullType(bool),
    );
    yield r'hiv2';
    yield serializers.serialize(
      object.hiv2,
      specifiedType: const FullType(bool),
    );
    yield r'hepatitisB';
    yield serializers.serialize(
      object.hepatitisB,
      specifiedType: const FullType(bool),
    );
    yield r'hepatitisC';
    yield serializers.serialize(
      object.hepatitisC,
      specifiedType: const FullType(bool),
    );
    yield r'syphilis';
    yield serializers.serialize(
      object.syphilis,
      specifiedType: const FullType(bool),
    );
    yield r'appointmentId';
    yield serializers.serialize(
      object.appointmentId,
      specifiedType: const FullType(String),
    );
    yield r'centerName';
    yield serializers.serialize(
      object.centerName,
      specifiedType: const FullType(String),
    );
    yield r'centerCoverPhoto';
    yield serializers.serialize(
      object.centerCoverPhoto,
      specifiedType: const FullType(String),
    );
    yield r'centerAddress';
    yield serializers.serialize(
      object.centerAddress,
      specifiedType: const FullType(String),
    );
    yield r'centerPhone';
    yield serializers.serialize(
      object.centerPhone,
      specifiedType: const FullType(String),
    );
    yield r'centerEmail';
    yield serializers.serialize(
      object.centerEmail,
      specifiedType: const FullType(String),
    );
    yield r'centerLatitude';
    yield serializers.serialize(
      object.centerLatitude,
      specifiedType: const FullType(String),
    );
    yield r'centerLongitude';
    yield serializers.serialize(
      object.centerLongitude,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MedicalHistoryInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MedicalHistoryInfoBuilder result,
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
        case r'bloodGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.bloodGroup = valueDes;
          break;
        case r'genotype':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.genotype = valueDes;
          break;
        case r'hiv1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hiv1 = valueDes;
          break;
        case r'hiv2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hiv2 = valueDes;
          break;
        case r'hepatitisB':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hepatitisB = valueDes;
          break;
        case r'hepatitisC':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hepatitisC = valueDes;
          break;
        case r'syphilis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.syphilis = valueDes;
          break;
        case r'appointmentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appointmentId = valueDes;
          break;
        case r'centerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerName = valueDes;
          break;
        case r'centerCoverPhoto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerCoverPhoto = valueDes;
          break;
        case r'centerAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerAddress = valueDes;
          break;
        case r'centerPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerPhone = valueDes;
          break;
        case r'centerEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerEmail = valueDes;
          break;
        case r'centerLatitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerLatitude = valueDes;
          break;
        case r'centerLongitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.centerLongitude = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MedicalHistoryInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MedicalHistoryInfoBuilder();
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

