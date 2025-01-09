// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'donation_center_info.g.dart';

/// DonationCenterInfo
///
/// Properties:
/// * [id] - Account ID (Auto generated)
/// * [name] - First name e.g Tunde.
/// * [phone] - Phone number e.g +2348090292842.
/// * [email] - Email address e.g tundeomotayo@gmail.com.
/// * [address] - Address e.g Gate 1 Laming Road Jos, Plateau State
/// * [buildingNumber] - Building number e.g 123
/// * [nearestLandMark] - Nearest landmark e.g Gate 1 Laming Road Jos, Plateau State
/// * [state] - State e.g Plateau
/// * [stateArea] - State area e.g Jos North
/// * [latitude] - Latitude e.g 9.2928839
/// * [longitude] - Longitude e.g 9.481991
/// * [logo] - Logo e.g https://medexer.s3.amazonaws.com/avatars/avatar.png
/// * [coverPhoto] - Cover photo e.g https://medexer.s3.amazonaws.com/avatars/avatar.png
/// * [shortDescription] - Short description of the donation center.
/// * [longDescription] - Detailed description of the donation center.
/// * [status] - Account status e.g PENDING
/// * [isComplianceUploaded] - In compliance uploaded e.g false
/// * [isComplianceApproved] - In compliance approved e.g false
/// * [verificationDeclineReason] - Flag to check if donation center credentials requires verification
/// * [ratingOne] - Rating one e.g 4
/// * [ratingTwo] - Rating two e.g 56
/// * [ratingThree] - Rating three e.g 78
/// * [ratingFour] - Rating four e.g 90
/// * [ratingFive] - Rating five e.g 100
/// * [averageRating] - Average rating e.g 4.5
@BuiltValue()
abstract class DonationCenterInfo implements Built<DonationCenterInfo, DonationCenterInfoBuilder> {
  /// Account ID (Auto generated)
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// First name e.g Tunde.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Phone number e.g +2348090292842.
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// Email address e.g tundeomotayo@gmail.com.
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Address e.g Gate 1 Laming Road Jos, Plateau State
  @BuiltValueField(wireName: r'address')
  String? get address;

  /// Building number e.g 123
  @BuiltValueField(wireName: r'buildingNumber')
  String? get buildingNumber;

  /// Nearest landmark e.g Gate 1 Laming Road Jos, Plateau State
  @BuiltValueField(wireName: r'nearestLandMark')
  String? get nearestLandMark;

  /// State e.g Plateau
  @BuiltValueField(wireName: r'state')
  String? get state;

  /// State area e.g Jos North
  @BuiltValueField(wireName: r'stateArea')
  String? get stateArea;

  /// Latitude e.g 9.2928839
  @BuiltValueField(wireName: r'latitude')
  String? get latitude;

  /// Longitude e.g 9.481991
  @BuiltValueField(wireName: r'longitude')
  String? get longitude;

  /// Logo e.g https://medexer.s3.amazonaws.com/avatars/avatar.png
  @BuiltValueField(wireName: r'logo')
  String? get logo;

  /// Cover photo e.g https://medexer.s3.amazonaws.com/avatars/avatar.png
  @BuiltValueField(wireName: r'coverPhoto')
  String? get coverPhoto;

  /// Short description of the donation center.
  @BuiltValueField(wireName: r'shortDescription')
  String? get shortDescription;

  /// Detailed description of the donation center.
  @BuiltValueField(wireName: r'longDescription')
  String? get longDescription;

  /// Account status e.g PENDING
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// In compliance uploaded e.g false
  @BuiltValueField(wireName: r'isComplianceUploaded')
  bool? get isComplianceUploaded;

  /// In compliance approved e.g false
  @BuiltValueField(wireName: r'isComplianceApproved')
  bool? get isComplianceApproved;

  /// Flag to check if donation center credentials requires verification
  @BuiltValueField(wireName: r'verificationDeclineReason')
  String? get verificationDeclineReason;

  /// Rating one e.g 4
  @BuiltValueField(wireName: r'ratingOne')
  String? get ratingOne;

  /// Rating two e.g 56
  @BuiltValueField(wireName: r'ratingTwo')
  String? get ratingTwo;

  /// Rating three e.g 78
  @BuiltValueField(wireName: r'ratingThree')
  String? get ratingThree;

  /// Rating four e.g 90
  @BuiltValueField(wireName: r'ratingFour')
  String? get ratingFour;

  /// Rating five e.g 100
  @BuiltValueField(wireName: r'ratingFive')
  String? get ratingFive;

  /// Average rating e.g 4.5
  @BuiltValueField(wireName: r'averageRating')
  String? get averageRating;

  DonationCenterInfo._();

  factory DonationCenterInfo([void updates(DonationCenterInfoBuilder b)]) = _$DonationCenterInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DonationCenterInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DonationCenterInfo> get serializer => _$DonationCenterInfoSerializer();
}

class _$DonationCenterInfoSerializer implements PrimitiveSerializer<DonationCenterInfo> {
  @override
  final Iterable<Type> types = const [DonationCenterInfo, _$DonationCenterInfo];

  @override
  final String wireName = r'DonationCenterInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DonationCenterInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    if (object.buildingNumber != null) {
      yield r'buildingNumber';
      yield serializers.serialize(
        object.buildingNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.nearestLandMark != null) {
      yield r'nearestLandMark';
      yield serializers.serialize(
        object.nearestLandMark,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
    if (object.stateArea != null) {
      yield r'stateArea';
      yield serializers.serialize(
        object.stateArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(String),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(String),
      );
    }
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(String),
      );
    }
    if (object.coverPhoto != null) {
      yield r'coverPhoto';
      yield serializers.serialize(
        object.coverPhoto,
        specifiedType: const FullType(String),
      );
    }
    if (object.shortDescription != null) {
      yield r'shortDescription';
      yield serializers.serialize(
        object.shortDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.longDescription != null) {
      yield r'longDescription';
      yield serializers.serialize(
        object.longDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.isComplianceUploaded != null) {
      yield r'isComplianceUploaded';
      yield serializers.serialize(
        object.isComplianceUploaded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isComplianceApproved != null) {
      yield r'isComplianceApproved';
      yield serializers.serialize(
        object.isComplianceApproved,
        specifiedType: const FullType(bool),
      );
    }
    if (object.verificationDeclineReason != null) {
      yield r'verificationDeclineReason';
      yield serializers.serialize(
        object.verificationDeclineReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.ratingOne != null) {
      yield r'ratingOne';
      yield serializers.serialize(
        object.ratingOne,
        specifiedType: const FullType(String),
      );
    }
    if (object.ratingTwo != null) {
      yield r'ratingTwo';
      yield serializers.serialize(
        object.ratingTwo,
        specifiedType: const FullType(String),
      );
    }
    if (object.ratingThree != null) {
      yield r'ratingThree';
      yield serializers.serialize(
        object.ratingThree,
        specifiedType: const FullType(String),
      );
    }
    if (object.ratingFour != null) {
      yield r'ratingFour';
      yield serializers.serialize(
        object.ratingFour,
        specifiedType: const FullType(String),
      );
    }
    if (object.ratingFive != null) {
      yield r'ratingFive';
      yield serializers.serialize(
        object.ratingFive,
        specifiedType: const FullType(String),
      );
    }
    if (object.averageRating != null) {
      yield r'averageRating';
      yield serializers.serialize(
        object.averageRating,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DonationCenterInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DonationCenterInfoBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'buildingNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.buildingNumber = valueDes;
          break;
        case r'nearestLandMark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nearestLandMark = valueDes;
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
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logo = valueDes;
          break;
        case r'coverPhoto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.coverPhoto = valueDes;
          break;
        case r'shortDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shortDescription = valueDes;
          break;
        case r'longDescription':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.longDescription = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'isComplianceUploaded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isComplianceUploaded = valueDes;
          break;
        case r'isComplianceApproved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isComplianceApproved = valueDes;
          break;
        case r'verificationDeclineReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verificationDeclineReason = valueDes;
          break;
        case r'ratingOne':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ratingOne = valueDes;
          break;
        case r'ratingTwo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ratingTwo = valueDes;
          break;
        case r'ratingThree':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ratingThree = valueDes;
          break;
        case r'ratingFour':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ratingFour = valueDes;
          break;
        case r'ratingFive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ratingFive = valueDes;
          break;
        case r'averageRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.averageRating = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DonationCenterInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DonationCenterInfoBuilder();
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

