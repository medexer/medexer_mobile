// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account.g.dart';

/// Account
///
/// Properties:
/// * [id] - Account ID (Auto generated).
/// * [firstName] - First name e.g Tunde.
/// * [lastName] - Last name e.g Omotayo.
/// * [phone] - Phone number e.g +2348090292842.
/// * [newPhone] - New phone number e.g +2348090292842.
/// * [email] - Email address e.g tundeomotayo@gmail.com.
/// * [newEmail] - New email address e.g tundeomotayo11@gmail.com.
/// * [password] - Password e.g SECURE_Lively1!@123
/// * [state] - State e.g Plateau
/// * [stateArea] - State area e.g Jos North
/// * [latitude] - Latitude e.g 9.2928839
/// * [longitude] - Longitude e.g 9.481991
/// * [profilePhoto] - Profile photo e.g https://medexer.s3.amazonaws.com/avatars/avatar.png
/// * [accountType] - Account type e.g INDIVIDUAL
/// * [status] - Account status e.g PENDING
/// * [fcmToken] - FCM token - Random firebase messaging string
/// * [referralCode] - Referral code e.g MDX_299292
/// * [referredBy] - Referred by e.g 489
/// * [activationCode] - Activation code by e.g 5492
/// * [activationCodeExpires] - Activation code expires by e.g 2024-11-10_T_11:29:22
/// * [passwordResetCode] - Password reset code by e.g 5492
/// * [passwordResetToken] - Password reset token by e.g ja92jkAjj11ma2
/// * [passwordResetCodeExpires] - Password reset code expires by e.g 2024-11-10_T_11:29:22
/// * [temporalAccessToken] - Temporal access token by e.g ja92jkAjj11ma2
/// * [lastLogin] - Last login e.g 2024-11-10_T_11:29:22
/// * [lastDonationDate] - Last donation date e.g 2024-11-10_T_11:29:22
/// * [inRecovery] - In recovery from donation e.g false
/// * [bloodGroup] - Blood group e.g O+
/// * [genotype] - Genotype e.g AS
/// * [hasTattoos] - Has tattoos e.g false
/// * [isComplianceUploaded] - In compliance uploaded e.g false
/// * [signupVerificationHash] - Signup verification hash
/// * [createdAt] - Created at e.g 2024-11-10_T_11:29:22
/// * [updatedAt] - Created at e.g 2025-11-10_T_11:29:22
@BuiltValue()
abstract class Account implements Built<Account, AccountBuilder> {
  /// Account ID (Auto generated).
  @BuiltValueField(wireName: r'id')
  num? get id;

  /// First name e.g Tunde.
  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  /// Last name e.g Omotayo.
  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  /// Phone number e.g +2348090292842.
  @BuiltValueField(wireName: r'phone')
  String? get phone;

  /// New phone number e.g +2348090292842.
  @BuiltValueField(wireName: r'newPhone')
  String? get newPhone;

  /// Email address e.g tundeomotayo@gmail.com.
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// New email address e.g tundeomotayo11@gmail.com.
  @BuiltValueField(wireName: r'newEmail')
  String? get newEmail;

  /// Password e.g SECURE_Lively1!@123
  @BuiltValueField(wireName: r'password')
  String? get password;

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

  /// Profile photo e.g https://medexer.s3.amazonaws.com/avatars/avatar.png
  @BuiltValueField(wireName: r'profilePhoto')
  String? get profilePhoto;

  /// Account type e.g INDIVIDUAL
  @BuiltValueField(wireName: r'accountType')
  String? get accountType;

  /// Account status e.g PENDING
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// FCM token - Random firebase messaging string
  @BuiltValueField(wireName: r'fcmToken')
  String? get fcmToken;

  /// Referral code e.g MDX_299292
  @BuiltValueField(wireName: r'referralCode')
  String? get referralCode;

  /// Referred by e.g 489
  @BuiltValueField(wireName: r'referredBy')
  String? get referredBy;

  /// Activation code by e.g 5492
  @BuiltValueField(wireName: r'activationCode')
  String? get activationCode;

  /// Activation code expires by e.g 2024-11-10_T_11:29:22
  @BuiltValueField(wireName: r'activationCodeExpires')
  DateTime? get activationCodeExpires;

  /// Password reset code by e.g 5492
  @BuiltValueField(wireName: r'passwordResetCode')
  String? get passwordResetCode;

  /// Password reset token by e.g ja92jkAjj11ma2
  @BuiltValueField(wireName: r'passwordResetToken')
  String? get passwordResetToken;

  /// Password reset code expires by e.g 2024-11-10_T_11:29:22
  @BuiltValueField(wireName: r'passwordResetCodeExpires')
  DateTime? get passwordResetCodeExpires;

  /// Temporal access token by e.g ja92jkAjj11ma2
  @BuiltValueField(wireName: r'temporalAccessToken')
  String? get temporalAccessToken;

  /// Last login e.g 2024-11-10_T_11:29:22
  @BuiltValueField(wireName: r'lastLogin')
  DateTime? get lastLogin;

  /// Last donation date e.g 2024-11-10_T_11:29:22
  @BuiltValueField(wireName: r'lastDonationDate')
  DateTime? get lastDonationDate;

  /// In recovery from donation e.g false
  @BuiltValueField(wireName: r'inRecovery')
  bool? get inRecovery;

  /// Blood group e.g O+
  @BuiltValueField(wireName: r'bloodGroup')
  String? get bloodGroup;

  /// Genotype e.g AS
  @BuiltValueField(wireName: r'genotype')
  String? get genotype;

  /// Has tattoos e.g false
  @BuiltValueField(wireName: r'hasTattoos')
  bool? get hasTattoos;

  /// In compliance uploaded e.g false
  @BuiltValueField(wireName: r'isComplianceUploaded')
  bool? get isComplianceUploaded;

  /// Signup verification hash
  @BuiltValueField(wireName: r'signupVerificationHash')
  String? get signupVerificationHash;

  /// Created at e.g 2024-11-10_T_11:29:22
  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  /// Created at e.g 2025-11-10_T_11:29:22
  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Account._();

  factory Account([void updates(AccountBuilder b)]) = _$Account;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Account> get serializer => _$AccountSerializer();
}

class _$AccountSerializer implements PrimitiveSerializer<Account> {
  @override
  final Iterable<Type> types = const [Account, _$Account];

  @override
  final String wireName = r'Account';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Account object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(num),
      );
    }
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
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
    if (object.newPhone != null) {
      yield r'newPhone';
      yield serializers.serialize(
        object.newPhone,
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
    if (object.newEmail != null) {
      yield r'newEmail';
      yield serializers.serialize(
        object.newEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
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
    if (object.profilePhoto != null) {
      yield r'profilePhoto';
      yield serializers.serialize(
        object.profilePhoto,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountType != null) {
      yield r'accountType';
      yield serializers.serialize(
        object.accountType,
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
    if (object.fcmToken != null) {
      yield r'fcmToken';
      yield serializers.serialize(
        object.fcmToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.referralCode != null) {
      yield r'referralCode';
      yield serializers.serialize(
        object.referralCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.referredBy != null) {
      yield r'referredBy';
      yield serializers.serialize(
        object.referredBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.activationCode != null) {
      yield r'activationCode';
      yield serializers.serialize(
        object.activationCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.activationCodeExpires != null) {
      yield r'activationCodeExpires';
      yield serializers.serialize(
        object.activationCodeExpires,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.passwordResetCode != null) {
      yield r'passwordResetCode';
      yield serializers.serialize(
        object.passwordResetCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.passwordResetToken != null) {
      yield r'passwordResetToken';
      yield serializers.serialize(
        object.passwordResetToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.passwordResetCodeExpires != null) {
      yield r'passwordResetCodeExpires';
      yield serializers.serialize(
        object.passwordResetCodeExpires,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.temporalAccessToken != null) {
      yield r'temporalAccessToken';
      yield serializers.serialize(
        object.temporalAccessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastLogin != null) {
      yield r'lastLogin';
      yield serializers.serialize(
        object.lastLogin,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.lastDonationDate != null) {
      yield r'lastDonationDate';
      yield serializers.serialize(
        object.lastDonationDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.inRecovery != null) {
      yield r'inRecovery';
      yield serializers.serialize(
        object.inRecovery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.bloodGroup != null) {
      yield r'bloodGroup';
      yield serializers.serialize(
        object.bloodGroup,
        specifiedType: const FullType(String),
      );
    }
    if (object.genotype != null) {
      yield r'genotype';
      yield serializers.serialize(
        object.genotype,
        specifiedType: const FullType(String),
      );
    }
    if (object.hasTattoos != null) {
      yield r'hasTattoos';
      yield serializers.serialize(
        object.hasTattoos,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isComplianceUploaded != null) {
      yield r'isComplianceUploaded';
      yield serializers.serialize(
        object.isComplianceUploaded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.signupVerificationHash != null) {
      yield r'signupVerificationHash';
      yield serializers.serialize(
        object.signupVerificationHash,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Account object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountBuilder result,
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
        case r'newPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newPhone = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'newEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newEmail = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
          result.accountType = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
        case r'activationCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.activationCode = valueDes;
          break;
        case r'activationCodeExpires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.activationCodeExpires = valueDes;
          break;
        case r'passwordResetCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.passwordResetCode = valueDes;
          break;
        case r'passwordResetToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.passwordResetToken = valueDes;
          break;
        case r'passwordResetCodeExpires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.passwordResetCodeExpires = valueDes;
          break;
        case r'temporalAccessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.temporalAccessToken = valueDes;
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
        case r'signupVerificationHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signupVerificationHash = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Account deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountBuilder();
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

