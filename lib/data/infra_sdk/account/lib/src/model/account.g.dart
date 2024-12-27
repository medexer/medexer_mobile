// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Account extends Account {
  @override
  final num? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phone;
  @override
  final String? newPhone;
  @override
  final String? email;
  @override
  final String? newEmail;
  @override
  final String? password;
  @override
  final String? state;
  @override
  final String? stateArea;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? profilePhoto;
  @override
  final String? accountType;
  @override
  final String? status;
  @override
  final String? fcmToken;
  @override
  final String? referralCode;
  @override
  final String? referredBy;
  @override
  final String? activationCode;
  @override
  final DateTime? activationCodeExpires;
  @override
  final String? passwordResetCode;
  @override
  final String? passwordResetToken;
  @override
  final DateTime? passwordResetCodeExpires;
  @override
  final String? temporalAccessToken;
  @override
  final DateTime? lastLogin;
  @override
  final DateTime? lastDonationDate;
  @override
  final bool? inRecovery;
  @override
  final String? bloodGroup;
  @override
  final String? genotype;
  @override
  final bool? hasTattoos;
  @override
  final bool? isComplianceUploaded;
  @override
  final String? signupVerificationHash;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Account([void Function(AccountBuilder)? updates]) =>
      (new AccountBuilder()..update(updates))._build();

  _$Account._(
      {this.id,
      this.firstName,
      this.lastName,
      this.phone,
      this.newPhone,
      this.email,
      this.newEmail,
      this.password,
      this.state,
      this.stateArea,
      this.latitude,
      this.longitude,
      this.profilePhoto,
      this.accountType,
      this.status,
      this.fcmToken,
      this.referralCode,
      this.referredBy,
      this.activationCode,
      this.activationCodeExpires,
      this.passwordResetCode,
      this.passwordResetToken,
      this.passwordResetCodeExpires,
      this.temporalAccessToken,
      this.lastLogin,
      this.lastDonationDate,
      this.inRecovery,
      this.bloodGroup,
      this.genotype,
      this.hasTattoos,
      this.isComplianceUploaded,
      this.signupVerificationHash,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  Account rebuild(void Function(AccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBuilder toBuilder() => new AccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phone == other.phone &&
        newPhone == other.newPhone &&
        email == other.email &&
        newEmail == other.newEmail &&
        password == other.password &&
        state == other.state &&
        stateArea == other.stateArea &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        profilePhoto == other.profilePhoto &&
        accountType == other.accountType &&
        status == other.status &&
        fcmToken == other.fcmToken &&
        referralCode == other.referralCode &&
        referredBy == other.referredBy &&
        activationCode == other.activationCode &&
        activationCodeExpires == other.activationCodeExpires &&
        passwordResetCode == other.passwordResetCode &&
        passwordResetToken == other.passwordResetToken &&
        passwordResetCodeExpires == other.passwordResetCodeExpires &&
        temporalAccessToken == other.temporalAccessToken &&
        lastLogin == other.lastLogin &&
        lastDonationDate == other.lastDonationDate &&
        inRecovery == other.inRecovery &&
        bloodGroup == other.bloodGroup &&
        genotype == other.genotype &&
        hasTattoos == other.hasTattoos &&
        isComplianceUploaded == other.isComplianceUploaded &&
        signupVerificationHash == other.signupVerificationHash &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, newPhone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, newEmail.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateArea.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, profilePhoto.hashCode);
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jc(_$hash, referralCode.hashCode);
    _$hash = $jc(_$hash, referredBy.hashCode);
    _$hash = $jc(_$hash, activationCode.hashCode);
    _$hash = $jc(_$hash, activationCodeExpires.hashCode);
    _$hash = $jc(_$hash, passwordResetCode.hashCode);
    _$hash = $jc(_$hash, passwordResetToken.hashCode);
    _$hash = $jc(_$hash, passwordResetCodeExpires.hashCode);
    _$hash = $jc(_$hash, temporalAccessToken.hashCode);
    _$hash = $jc(_$hash, lastLogin.hashCode);
    _$hash = $jc(_$hash, lastDonationDate.hashCode);
    _$hash = $jc(_$hash, inRecovery.hashCode);
    _$hash = $jc(_$hash, bloodGroup.hashCode);
    _$hash = $jc(_$hash, genotype.hashCode);
    _$hash = $jc(_$hash, hasTattoos.hashCode);
    _$hash = $jc(_$hash, isComplianceUploaded.hashCode);
    _$hash = $jc(_$hash, signupVerificationHash.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Account')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phone', phone)
          ..add('newPhone', newPhone)
          ..add('email', email)
          ..add('newEmail', newEmail)
          ..add('password', password)
          ..add('state', state)
          ..add('stateArea', stateArea)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('profilePhoto', profilePhoto)
          ..add('accountType', accountType)
          ..add('status', status)
          ..add('fcmToken', fcmToken)
          ..add('referralCode', referralCode)
          ..add('referredBy', referredBy)
          ..add('activationCode', activationCode)
          ..add('activationCodeExpires', activationCodeExpires)
          ..add('passwordResetCode', passwordResetCode)
          ..add('passwordResetToken', passwordResetToken)
          ..add('passwordResetCodeExpires', passwordResetCodeExpires)
          ..add('temporalAccessToken', temporalAccessToken)
          ..add('lastLogin', lastLogin)
          ..add('lastDonationDate', lastDonationDate)
          ..add('inRecovery', inRecovery)
          ..add('bloodGroup', bloodGroup)
          ..add('genotype', genotype)
          ..add('hasTattoos', hasTattoos)
          ..add('isComplianceUploaded', isComplianceUploaded)
          ..add('signupVerificationHash', signupVerificationHash)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _newPhone;
  String? get newPhone => _$this._newPhone;
  set newPhone(String? newPhone) => _$this._newPhone = newPhone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _newEmail;
  String? get newEmail => _$this._newEmail;
  set newEmail(String? newEmail) => _$this._newEmail = newEmail;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _stateArea;
  String? get stateArea => _$this._stateArea;
  set stateArea(String? stateArea) => _$this._stateArea = stateArea;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  String? _profilePhoto;
  String? get profilePhoto => _$this._profilePhoto;
  set profilePhoto(String? profilePhoto) => _$this._profilePhoto = profilePhoto;

  String? _accountType;
  String? get accountType => _$this._accountType;
  set accountType(String? accountType) => _$this._accountType = accountType;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  String? _referralCode;
  String? get referralCode => _$this._referralCode;
  set referralCode(String? referralCode) => _$this._referralCode = referralCode;

  String? _referredBy;
  String? get referredBy => _$this._referredBy;
  set referredBy(String? referredBy) => _$this._referredBy = referredBy;

  String? _activationCode;
  String? get activationCode => _$this._activationCode;
  set activationCode(String? activationCode) =>
      _$this._activationCode = activationCode;

  DateTime? _activationCodeExpires;
  DateTime? get activationCodeExpires => _$this._activationCodeExpires;
  set activationCodeExpires(DateTime? activationCodeExpires) =>
      _$this._activationCodeExpires = activationCodeExpires;

  String? _passwordResetCode;
  String? get passwordResetCode => _$this._passwordResetCode;
  set passwordResetCode(String? passwordResetCode) =>
      _$this._passwordResetCode = passwordResetCode;

  String? _passwordResetToken;
  String? get passwordResetToken => _$this._passwordResetToken;
  set passwordResetToken(String? passwordResetToken) =>
      _$this._passwordResetToken = passwordResetToken;

  DateTime? _passwordResetCodeExpires;
  DateTime? get passwordResetCodeExpires => _$this._passwordResetCodeExpires;
  set passwordResetCodeExpires(DateTime? passwordResetCodeExpires) =>
      _$this._passwordResetCodeExpires = passwordResetCodeExpires;

  String? _temporalAccessToken;
  String? get temporalAccessToken => _$this._temporalAccessToken;
  set temporalAccessToken(String? temporalAccessToken) =>
      _$this._temporalAccessToken = temporalAccessToken;

  DateTime? _lastLogin;
  DateTime? get lastLogin => _$this._lastLogin;
  set lastLogin(DateTime? lastLogin) => _$this._lastLogin = lastLogin;

  DateTime? _lastDonationDate;
  DateTime? get lastDonationDate => _$this._lastDonationDate;
  set lastDonationDate(DateTime? lastDonationDate) =>
      _$this._lastDonationDate = lastDonationDate;

  bool? _inRecovery;
  bool? get inRecovery => _$this._inRecovery;
  set inRecovery(bool? inRecovery) => _$this._inRecovery = inRecovery;

  String? _bloodGroup;
  String? get bloodGroup => _$this._bloodGroup;
  set bloodGroup(String? bloodGroup) => _$this._bloodGroup = bloodGroup;

  String? _genotype;
  String? get genotype => _$this._genotype;
  set genotype(String? genotype) => _$this._genotype = genotype;

  bool? _hasTattoos;
  bool? get hasTattoos => _$this._hasTattoos;
  set hasTattoos(bool? hasTattoos) => _$this._hasTattoos = hasTattoos;

  bool? _isComplianceUploaded;
  bool? get isComplianceUploaded => _$this._isComplianceUploaded;
  set isComplianceUploaded(bool? isComplianceUploaded) =>
      _$this._isComplianceUploaded = isComplianceUploaded;

  String? _signupVerificationHash;
  String? get signupVerificationHash => _$this._signupVerificationHash;
  set signupVerificationHash(String? signupVerificationHash) =>
      _$this._signupVerificationHash = signupVerificationHash;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AccountBuilder() {
    Account._defaults(this);
  }

  AccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phone = $v.phone;
      _newPhone = $v.newPhone;
      _email = $v.email;
      _newEmail = $v.newEmail;
      _password = $v.password;
      _state = $v.state;
      _stateArea = $v.stateArea;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _profilePhoto = $v.profilePhoto;
      _accountType = $v.accountType;
      _status = $v.status;
      _fcmToken = $v.fcmToken;
      _referralCode = $v.referralCode;
      _referredBy = $v.referredBy;
      _activationCode = $v.activationCode;
      _activationCodeExpires = $v.activationCodeExpires;
      _passwordResetCode = $v.passwordResetCode;
      _passwordResetToken = $v.passwordResetToken;
      _passwordResetCodeExpires = $v.passwordResetCodeExpires;
      _temporalAccessToken = $v.temporalAccessToken;
      _lastLogin = $v.lastLogin;
      _lastDonationDate = $v.lastDonationDate;
      _inRecovery = $v.inRecovery;
      _bloodGroup = $v.bloodGroup;
      _genotype = $v.genotype;
      _hasTattoos = $v.hasTattoos;
      _isComplianceUploaded = $v.isComplianceUploaded;
      _signupVerificationHash = $v.signupVerificationHash;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Account other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Account;
  }

  @override
  void update(void Function(AccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Account build() => _build();

  _$Account _build() {
    final _$result = _$v ??
        new _$Account._(
            id: id,
            firstName: firstName,
            lastName: lastName,
            phone: phone,
            newPhone: newPhone,
            email: email,
            newEmail: newEmail,
            password: password,
            state: state,
            stateArea: stateArea,
            latitude: latitude,
            longitude: longitude,
            profilePhoto: profilePhoto,
            accountType: accountType,
            status: status,
            fcmToken: fcmToken,
            referralCode: referralCode,
            referredBy: referredBy,
            activationCode: activationCode,
            activationCodeExpires: activationCodeExpires,
            passwordResetCode: passwordResetCode,
            passwordResetToken: passwordResetToken,
            passwordResetCodeExpires: passwordResetCodeExpires,
            temporalAccessToken: temporalAccessToken,
            lastLogin: lastLogin,
            lastDonationDate: lastDonationDate,
            inRecovery: inRecovery,
            bloodGroup: bloodGroup,
            genotype: genotype,
            hasTattoos: hasTattoos,
            isComplianceUploaded: isComplianceUploaded,
            signupVerificationHash: signupVerificationHash,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
