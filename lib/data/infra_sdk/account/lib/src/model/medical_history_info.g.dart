// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'medical_history_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MedicalHistoryInfo extends MedicalHistoryInfo {
  @override
  final String id;
  @override
  final String bloodGroup;
  @override
  final String genotype;
  @override
  final bool hiv1;
  @override
  final bool hiv2;
  @override
  final bool hepatitisB;
  @override
  final bool hepatitisC;
  @override
  final bool syphilis;
  @override
  final String appointmentId;
  @override
  final String centerName;
  @override
  final String centerCoverPhoto;
  @override
  final String centerAddress;
  @override
  final String centerPhone;
  @override
  final String centerEmail;
  @override
  final String centerLatitude;
  @override
  final String centerLongitude;
  @override
  final DateTime createdAt;

  factory _$MedicalHistoryInfo(
          [void Function(MedicalHistoryInfoBuilder)? updates]) =>
      (new MedicalHistoryInfoBuilder()..update(updates))._build();

  _$MedicalHistoryInfo._(
      {required this.id,
      required this.bloodGroup,
      required this.genotype,
      required this.hiv1,
      required this.hiv2,
      required this.hepatitisB,
      required this.hepatitisC,
      required this.syphilis,
      required this.appointmentId,
      required this.centerName,
      required this.centerCoverPhoto,
      required this.centerAddress,
      required this.centerPhone,
      required this.centerEmail,
      required this.centerLatitude,
      required this.centerLongitude,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'MedicalHistoryInfo', 'id');
    BuiltValueNullFieldError.checkNotNull(
        bloodGroup, r'MedicalHistoryInfo', 'bloodGroup');
    BuiltValueNullFieldError.checkNotNull(
        genotype, r'MedicalHistoryInfo', 'genotype');
    BuiltValueNullFieldError.checkNotNull(hiv1, r'MedicalHistoryInfo', 'hiv1');
    BuiltValueNullFieldError.checkNotNull(hiv2, r'MedicalHistoryInfo', 'hiv2');
    BuiltValueNullFieldError.checkNotNull(
        hepatitisB, r'MedicalHistoryInfo', 'hepatitisB');
    BuiltValueNullFieldError.checkNotNull(
        hepatitisC, r'MedicalHistoryInfo', 'hepatitisC');
    BuiltValueNullFieldError.checkNotNull(
        syphilis, r'MedicalHistoryInfo', 'syphilis');
    BuiltValueNullFieldError.checkNotNull(
        appointmentId, r'MedicalHistoryInfo', 'appointmentId');
    BuiltValueNullFieldError.checkNotNull(
        centerName, r'MedicalHistoryInfo', 'centerName');
    BuiltValueNullFieldError.checkNotNull(
        centerCoverPhoto, r'MedicalHistoryInfo', 'centerCoverPhoto');
    BuiltValueNullFieldError.checkNotNull(
        centerAddress, r'MedicalHistoryInfo', 'centerAddress');
    BuiltValueNullFieldError.checkNotNull(
        centerPhone, r'MedicalHistoryInfo', 'centerPhone');
    BuiltValueNullFieldError.checkNotNull(
        centerEmail, r'MedicalHistoryInfo', 'centerEmail');
    BuiltValueNullFieldError.checkNotNull(
        centerLatitude, r'MedicalHistoryInfo', 'centerLatitude');
    BuiltValueNullFieldError.checkNotNull(
        centerLongitude, r'MedicalHistoryInfo', 'centerLongitude');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'MedicalHistoryInfo', 'createdAt');
  }

  @override
  MedicalHistoryInfo rebuild(
          void Function(MedicalHistoryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MedicalHistoryInfoBuilder toBuilder() =>
      new MedicalHistoryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MedicalHistoryInfo &&
        id == other.id &&
        bloodGroup == other.bloodGroup &&
        genotype == other.genotype &&
        hiv1 == other.hiv1 &&
        hiv2 == other.hiv2 &&
        hepatitisB == other.hepatitisB &&
        hepatitisC == other.hepatitisC &&
        syphilis == other.syphilis &&
        appointmentId == other.appointmentId &&
        centerName == other.centerName &&
        centerCoverPhoto == other.centerCoverPhoto &&
        centerAddress == other.centerAddress &&
        centerPhone == other.centerPhone &&
        centerEmail == other.centerEmail &&
        centerLatitude == other.centerLatitude &&
        centerLongitude == other.centerLongitude &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, bloodGroup.hashCode);
    _$hash = $jc(_$hash, genotype.hashCode);
    _$hash = $jc(_$hash, hiv1.hashCode);
    _$hash = $jc(_$hash, hiv2.hashCode);
    _$hash = $jc(_$hash, hepatitisB.hashCode);
    _$hash = $jc(_$hash, hepatitisC.hashCode);
    _$hash = $jc(_$hash, syphilis.hashCode);
    _$hash = $jc(_$hash, appointmentId.hashCode);
    _$hash = $jc(_$hash, centerName.hashCode);
    _$hash = $jc(_$hash, centerCoverPhoto.hashCode);
    _$hash = $jc(_$hash, centerAddress.hashCode);
    _$hash = $jc(_$hash, centerPhone.hashCode);
    _$hash = $jc(_$hash, centerEmail.hashCode);
    _$hash = $jc(_$hash, centerLatitude.hashCode);
    _$hash = $jc(_$hash, centerLongitude.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MedicalHistoryInfo')
          ..add('id', id)
          ..add('bloodGroup', bloodGroup)
          ..add('genotype', genotype)
          ..add('hiv1', hiv1)
          ..add('hiv2', hiv2)
          ..add('hepatitisB', hepatitisB)
          ..add('hepatitisC', hepatitisC)
          ..add('syphilis', syphilis)
          ..add('appointmentId', appointmentId)
          ..add('centerName', centerName)
          ..add('centerCoverPhoto', centerCoverPhoto)
          ..add('centerAddress', centerAddress)
          ..add('centerPhone', centerPhone)
          ..add('centerEmail', centerEmail)
          ..add('centerLatitude', centerLatitude)
          ..add('centerLongitude', centerLongitude)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class MedicalHistoryInfoBuilder
    implements Builder<MedicalHistoryInfo, MedicalHistoryInfoBuilder> {
  _$MedicalHistoryInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _bloodGroup;
  String? get bloodGroup => _$this._bloodGroup;
  set bloodGroup(String? bloodGroup) => _$this._bloodGroup = bloodGroup;

  String? _genotype;
  String? get genotype => _$this._genotype;
  set genotype(String? genotype) => _$this._genotype = genotype;

  bool? _hiv1;
  bool? get hiv1 => _$this._hiv1;
  set hiv1(bool? hiv1) => _$this._hiv1 = hiv1;

  bool? _hiv2;
  bool? get hiv2 => _$this._hiv2;
  set hiv2(bool? hiv2) => _$this._hiv2 = hiv2;

  bool? _hepatitisB;
  bool? get hepatitisB => _$this._hepatitisB;
  set hepatitisB(bool? hepatitisB) => _$this._hepatitisB = hepatitisB;

  bool? _hepatitisC;
  bool? get hepatitisC => _$this._hepatitisC;
  set hepatitisC(bool? hepatitisC) => _$this._hepatitisC = hepatitisC;

  bool? _syphilis;
  bool? get syphilis => _$this._syphilis;
  set syphilis(bool? syphilis) => _$this._syphilis = syphilis;

  String? _appointmentId;
  String? get appointmentId => _$this._appointmentId;
  set appointmentId(String? appointmentId) =>
      _$this._appointmentId = appointmentId;

  String? _centerName;
  String? get centerName => _$this._centerName;
  set centerName(String? centerName) => _$this._centerName = centerName;

  String? _centerCoverPhoto;
  String? get centerCoverPhoto => _$this._centerCoverPhoto;
  set centerCoverPhoto(String? centerCoverPhoto) =>
      _$this._centerCoverPhoto = centerCoverPhoto;

  String? _centerAddress;
  String? get centerAddress => _$this._centerAddress;
  set centerAddress(String? centerAddress) =>
      _$this._centerAddress = centerAddress;

  String? _centerPhone;
  String? get centerPhone => _$this._centerPhone;
  set centerPhone(String? centerPhone) => _$this._centerPhone = centerPhone;

  String? _centerEmail;
  String? get centerEmail => _$this._centerEmail;
  set centerEmail(String? centerEmail) => _$this._centerEmail = centerEmail;

  String? _centerLatitude;
  String? get centerLatitude => _$this._centerLatitude;
  set centerLatitude(String? centerLatitude) =>
      _$this._centerLatitude = centerLatitude;

  String? _centerLongitude;
  String? get centerLongitude => _$this._centerLongitude;
  set centerLongitude(String? centerLongitude) =>
      _$this._centerLongitude = centerLongitude;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  MedicalHistoryInfoBuilder() {
    MedicalHistoryInfo._defaults(this);
  }

  MedicalHistoryInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _bloodGroup = $v.bloodGroup;
      _genotype = $v.genotype;
      _hiv1 = $v.hiv1;
      _hiv2 = $v.hiv2;
      _hepatitisB = $v.hepatitisB;
      _hepatitisC = $v.hepatitisC;
      _syphilis = $v.syphilis;
      _appointmentId = $v.appointmentId;
      _centerName = $v.centerName;
      _centerCoverPhoto = $v.centerCoverPhoto;
      _centerAddress = $v.centerAddress;
      _centerPhone = $v.centerPhone;
      _centerEmail = $v.centerEmail;
      _centerLatitude = $v.centerLatitude;
      _centerLongitude = $v.centerLongitude;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MedicalHistoryInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MedicalHistoryInfo;
  }

  @override
  void update(void Function(MedicalHistoryInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MedicalHistoryInfo build() => _build();

  _$MedicalHistoryInfo _build() {
    final _$result = _$v ??
        new _$MedicalHistoryInfo._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'MedicalHistoryInfo', 'id'),
            bloodGroup: BuiltValueNullFieldError.checkNotNull(
                bloodGroup, r'MedicalHistoryInfo', 'bloodGroup'),
            genotype: BuiltValueNullFieldError.checkNotNull(
                genotype, r'MedicalHistoryInfo', 'genotype'),
            hiv1: BuiltValueNullFieldError.checkNotNull(
                hiv1, r'MedicalHistoryInfo', 'hiv1'),
            hiv2: BuiltValueNullFieldError.checkNotNull(
                hiv2, r'MedicalHistoryInfo', 'hiv2'),
            hepatitisB: BuiltValueNullFieldError.checkNotNull(
                hepatitisB, r'MedicalHistoryInfo', 'hepatitisB'),
            hepatitisC: BuiltValueNullFieldError.checkNotNull(
                hepatitisC, r'MedicalHistoryInfo', 'hepatitisC'),
            syphilis: BuiltValueNullFieldError.checkNotNull(
                syphilis, r'MedicalHistoryInfo', 'syphilis'),
            appointmentId: BuiltValueNullFieldError.checkNotNull(
                appointmentId, r'MedicalHistoryInfo', 'appointmentId'),
            centerName: BuiltValueNullFieldError.checkNotNull(centerName, r'MedicalHistoryInfo', 'centerName'),
            centerCoverPhoto: BuiltValueNullFieldError.checkNotNull(centerCoverPhoto, r'MedicalHistoryInfo', 'centerCoverPhoto'),
            centerAddress: BuiltValueNullFieldError.checkNotNull(centerAddress, r'MedicalHistoryInfo', 'centerAddress'),
            centerPhone: BuiltValueNullFieldError.checkNotNull(centerPhone, r'MedicalHistoryInfo', 'centerPhone'),
            centerEmail: BuiltValueNullFieldError.checkNotNull(centerEmail, r'MedicalHistoryInfo', 'centerEmail'),
            centerLatitude: BuiltValueNullFieldError.checkNotNull(centerLatitude, r'MedicalHistoryInfo', 'centerLatitude'),
            centerLongitude: BuiltValueNullFieldError.checkNotNull(centerLongitude, r'MedicalHistoryInfo', 'centerLongitude'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'MedicalHistoryInfo', 'createdAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
