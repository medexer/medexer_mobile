// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'donation_center_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DonationCenterInfo extends DonationCenterInfo {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? buildingNumber;
  @override
  final String? nearestLandMark;
  @override
  final String? state;
  @override
  final String? stateArea;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? logo;
  @override
  final String? coverPhoto;
  @override
  final String? shortDescription;
  @override
  final String? longDescription;
  @override
  final String? status;
  @override
  final bool? isComplianceUploaded;
  @override
  final bool? isComplianceApproved;
  @override
  final String? verificationDeclineReason;
  @override
  final String? ratingOne;
  @override
  final String? ratingTwo;
  @override
  final String? ratingThree;
  @override
  final String? ratingFour;
  @override
  final String? ratingFive;
  @override
  final String? averageRating;

  factory _$DonationCenterInfo(
          [void Function(DonationCenterInfoBuilder)? updates]) =>
      (new DonationCenterInfoBuilder()..update(updates))._build();

  _$DonationCenterInfo._(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.address,
      this.buildingNumber,
      this.nearestLandMark,
      this.state,
      this.stateArea,
      this.latitude,
      this.longitude,
      this.logo,
      this.coverPhoto,
      this.shortDescription,
      this.longDescription,
      this.status,
      this.isComplianceUploaded,
      this.isComplianceApproved,
      this.verificationDeclineReason,
      this.ratingOne,
      this.ratingTwo,
      this.ratingThree,
      this.ratingFour,
      this.ratingFive,
      this.averageRating})
      : super._();

  @override
  DonationCenterInfo rebuild(
          void Function(DonationCenterInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonationCenterInfoBuilder toBuilder() =>
      new DonationCenterInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonationCenterInfo &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        email == other.email &&
        address == other.address &&
        buildingNumber == other.buildingNumber &&
        nearestLandMark == other.nearestLandMark &&
        state == other.state &&
        stateArea == other.stateArea &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        logo == other.logo &&
        coverPhoto == other.coverPhoto &&
        shortDescription == other.shortDescription &&
        longDescription == other.longDescription &&
        status == other.status &&
        isComplianceUploaded == other.isComplianceUploaded &&
        isComplianceApproved == other.isComplianceApproved &&
        verificationDeclineReason == other.verificationDeclineReason &&
        ratingOne == other.ratingOne &&
        ratingTwo == other.ratingTwo &&
        ratingThree == other.ratingThree &&
        ratingFour == other.ratingFour &&
        ratingFive == other.ratingFive &&
        averageRating == other.averageRating;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, buildingNumber.hashCode);
    _$hash = $jc(_$hash, nearestLandMark.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateArea.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, coverPhoto.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, longDescription.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isComplianceUploaded.hashCode);
    _$hash = $jc(_$hash, isComplianceApproved.hashCode);
    _$hash = $jc(_$hash, verificationDeclineReason.hashCode);
    _$hash = $jc(_$hash, ratingOne.hashCode);
    _$hash = $jc(_$hash, ratingTwo.hashCode);
    _$hash = $jc(_$hash, ratingThree.hashCode);
    _$hash = $jc(_$hash, ratingFour.hashCode);
    _$hash = $jc(_$hash, ratingFive.hashCode);
    _$hash = $jc(_$hash, averageRating.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DonationCenterInfo')
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('email', email)
          ..add('address', address)
          ..add('buildingNumber', buildingNumber)
          ..add('nearestLandMark', nearestLandMark)
          ..add('state', state)
          ..add('stateArea', stateArea)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('logo', logo)
          ..add('coverPhoto', coverPhoto)
          ..add('shortDescription', shortDescription)
          ..add('longDescription', longDescription)
          ..add('status', status)
          ..add('isComplianceUploaded', isComplianceUploaded)
          ..add('isComplianceApproved', isComplianceApproved)
          ..add('verificationDeclineReason', verificationDeclineReason)
          ..add('ratingOne', ratingOne)
          ..add('ratingTwo', ratingTwo)
          ..add('ratingThree', ratingThree)
          ..add('ratingFour', ratingFour)
          ..add('ratingFive', ratingFive)
          ..add('averageRating', averageRating))
        .toString();
  }
}

class DonationCenterInfoBuilder
    implements Builder<DonationCenterInfo, DonationCenterInfoBuilder> {
  _$DonationCenterInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _buildingNumber;
  String? get buildingNumber => _$this._buildingNumber;
  set buildingNumber(String? buildingNumber) =>
      _$this._buildingNumber = buildingNumber;

  String? _nearestLandMark;
  String? get nearestLandMark => _$this._nearestLandMark;
  set nearestLandMark(String? nearestLandMark) =>
      _$this._nearestLandMark = nearestLandMark;

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

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _coverPhoto;
  String? get coverPhoto => _$this._coverPhoto;
  set coverPhoto(String? coverPhoto) => _$this._coverPhoto = coverPhoto;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  String? _longDescription;
  String? get longDescription => _$this._longDescription;
  set longDescription(String? longDescription) =>
      _$this._longDescription = longDescription;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _isComplianceUploaded;
  bool? get isComplianceUploaded => _$this._isComplianceUploaded;
  set isComplianceUploaded(bool? isComplianceUploaded) =>
      _$this._isComplianceUploaded = isComplianceUploaded;

  bool? _isComplianceApproved;
  bool? get isComplianceApproved => _$this._isComplianceApproved;
  set isComplianceApproved(bool? isComplianceApproved) =>
      _$this._isComplianceApproved = isComplianceApproved;

  String? _verificationDeclineReason;
  String? get verificationDeclineReason => _$this._verificationDeclineReason;
  set verificationDeclineReason(String? verificationDeclineReason) =>
      _$this._verificationDeclineReason = verificationDeclineReason;

  String? _ratingOne;
  String? get ratingOne => _$this._ratingOne;
  set ratingOne(String? ratingOne) => _$this._ratingOne = ratingOne;

  String? _ratingTwo;
  String? get ratingTwo => _$this._ratingTwo;
  set ratingTwo(String? ratingTwo) => _$this._ratingTwo = ratingTwo;

  String? _ratingThree;
  String? get ratingThree => _$this._ratingThree;
  set ratingThree(String? ratingThree) => _$this._ratingThree = ratingThree;

  String? _ratingFour;
  String? get ratingFour => _$this._ratingFour;
  set ratingFour(String? ratingFour) => _$this._ratingFour = ratingFour;

  String? _ratingFive;
  String? get ratingFive => _$this._ratingFive;
  set ratingFive(String? ratingFive) => _$this._ratingFive = ratingFive;

  String? _averageRating;
  String? get averageRating => _$this._averageRating;
  set averageRating(String? averageRating) =>
      _$this._averageRating = averageRating;

  DonationCenterInfoBuilder() {
    DonationCenterInfo._defaults(this);
  }

  DonationCenterInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _phone = $v.phone;
      _email = $v.email;
      _address = $v.address;
      _buildingNumber = $v.buildingNumber;
      _nearestLandMark = $v.nearestLandMark;
      _state = $v.state;
      _stateArea = $v.stateArea;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _logo = $v.logo;
      _coverPhoto = $v.coverPhoto;
      _shortDescription = $v.shortDescription;
      _longDescription = $v.longDescription;
      _status = $v.status;
      _isComplianceUploaded = $v.isComplianceUploaded;
      _isComplianceApproved = $v.isComplianceApproved;
      _verificationDeclineReason = $v.verificationDeclineReason;
      _ratingOne = $v.ratingOne;
      _ratingTwo = $v.ratingTwo;
      _ratingThree = $v.ratingThree;
      _ratingFour = $v.ratingFour;
      _ratingFive = $v.ratingFive;
      _averageRating = $v.averageRating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonationCenterInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonationCenterInfo;
  }

  @override
  void update(void Function(DonationCenterInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DonationCenterInfo build() => _build();

  _$DonationCenterInfo _build() {
    final _$result = _$v ??
        new _$DonationCenterInfo._(
            id: id,
            name: name,
            phone: phone,
            email: email,
            address: address,
            buildingNumber: buildingNumber,
            nearestLandMark: nearestLandMark,
            state: state,
            stateArea: stateArea,
            latitude: latitude,
            longitude: longitude,
            logo: logo,
            coverPhoto: coverPhoto,
            shortDescription: shortDescription,
            longDescription: longDescription,
            status: status,
            isComplianceUploaded: isComplianceUploaded,
            isComplianceApproved: isComplianceApproved,
            verificationDeclineReason: verificationDeclineReason,
            ratingOne: ratingOne,
            ratingTwo: ratingTwo,
            ratingThree: ratingThree,
            ratingFour: ratingFour,
            ratingFive: ratingFive,
            averageRating: averageRating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
