// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'appointment_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_pending =
    const AppointmentInfoStatusEnum._('pending');
const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_accepted =
    const AppointmentInfoStatusEnum._('accepted');
const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_processing =
    const AppointmentInfoStatusEnum._('processing');
const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_completed =
    const AppointmentInfoStatusEnum._('completed');
const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_cancelled =
    const AppointmentInfoStatusEnum._('cancelled');
const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_missed =
    const AppointmentInfoStatusEnum._('missed');
const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_noShow =
    const AppointmentInfoStatusEnum._('noShow');
const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_rejected =
    const AppointmentInfoStatusEnum._('rejected');
const AppointmentInfoStatusEnum _$appointmentInfoStatusEnum_expired =
    const AppointmentInfoStatusEnum._('expired');

AppointmentInfoStatusEnum _$appointmentInfoStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$appointmentInfoStatusEnum_pending;
    case 'accepted':
      return _$appointmentInfoStatusEnum_accepted;
    case 'processing':
      return _$appointmentInfoStatusEnum_processing;
    case 'completed':
      return _$appointmentInfoStatusEnum_completed;
    case 'cancelled':
      return _$appointmentInfoStatusEnum_cancelled;
    case 'missed':
      return _$appointmentInfoStatusEnum_missed;
    case 'noShow':
      return _$appointmentInfoStatusEnum_noShow;
    case 'rejected':
      return _$appointmentInfoStatusEnum_rejected;
    case 'expired':
      return _$appointmentInfoStatusEnum_expired;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AppointmentInfoStatusEnum> _$appointmentInfoStatusEnumValues =
    new BuiltSet<AppointmentInfoStatusEnum>(const <AppointmentInfoStatusEnum>[
  _$appointmentInfoStatusEnum_pending,
  _$appointmentInfoStatusEnum_accepted,
  _$appointmentInfoStatusEnum_processing,
  _$appointmentInfoStatusEnum_completed,
  _$appointmentInfoStatusEnum_cancelled,
  _$appointmentInfoStatusEnum_missed,
  _$appointmentInfoStatusEnum_noShow,
  _$appointmentInfoStatusEnum_rejected,
  _$appointmentInfoStatusEnum_expired,
]);

Serializer<AppointmentInfoStatusEnum> _$appointmentInfoStatusEnumSerializer =
    new _$AppointmentInfoStatusEnumSerializer();

class _$AppointmentInfoStatusEnumSerializer
    implements PrimitiveSerializer<AppointmentInfoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'accepted': 'accepted',
    'processing': 'processing',
    'completed': 'completed',
    'cancelled': 'cancelled',
    'missed': 'missed',
    'noShow': 'no_show',
    'rejected': 'rejected',
    'expired': 'expired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'accepted': 'accepted',
    'processing': 'processing',
    'completed': 'completed',
    'cancelled': 'cancelled',
    'missed': 'missed',
    'no_show': 'noShow',
    'rejected': 'rejected',
    'expired': 'expired',
  };

  @override
  final Iterable<Type> types = const <Type>[AppointmentInfoStatusEnum];
  @override
  final String wireName = 'AppointmentInfoStatusEnum';

  @override
  Object serialize(Serializers serializers, AppointmentInfoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AppointmentInfoStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AppointmentInfoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AppointmentInfo extends AppointmentInfo {
  @override
  final String id;
  @override
  final String appointmentId;
  @override
  final String time;
  @override
  final DateTime date;
  @override
  final AppointmentInfoStatusEnum status;
  @override
  final String verificationCode;
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
  @override
  final DateTime updatedAt;

  factory _$AppointmentInfo([void Function(AppointmentInfoBuilder)? updates]) =>
      (new AppointmentInfoBuilder()..update(updates))._build();

  _$AppointmentInfo._(
      {required this.id,
      required this.appointmentId,
      required this.time,
      required this.date,
      required this.status,
      required this.verificationCode,
      required this.centerName,
      required this.centerCoverPhoto,
      required this.centerAddress,
      required this.centerPhone,
      required this.centerEmail,
      required this.centerLatitude,
      required this.centerLongitude,
      required this.createdAt,
      required this.updatedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AppointmentInfo', 'id');
    BuiltValueNullFieldError.checkNotNull(
        appointmentId, r'AppointmentInfo', 'appointmentId');
    BuiltValueNullFieldError.checkNotNull(time, r'AppointmentInfo', 'time');
    BuiltValueNullFieldError.checkNotNull(date, r'AppointmentInfo', 'date');
    BuiltValueNullFieldError.checkNotNull(status, r'AppointmentInfo', 'status');
    BuiltValueNullFieldError.checkNotNull(
        verificationCode, r'AppointmentInfo', 'verificationCode');
    BuiltValueNullFieldError.checkNotNull(
        centerName, r'AppointmentInfo', 'centerName');
    BuiltValueNullFieldError.checkNotNull(
        centerCoverPhoto, r'AppointmentInfo', 'centerCoverPhoto');
    BuiltValueNullFieldError.checkNotNull(
        centerAddress, r'AppointmentInfo', 'centerAddress');
    BuiltValueNullFieldError.checkNotNull(
        centerPhone, r'AppointmentInfo', 'centerPhone');
    BuiltValueNullFieldError.checkNotNull(
        centerEmail, r'AppointmentInfo', 'centerEmail');
    BuiltValueNullFieldError.checkNotNull(
        centerLatitude, r'AppointmentInfo', 'centerLatitude');
    BuiltValueNullFieldError.checkNotNull(
        centerLongitude, r'AppointmentInfo', 'centerLongitude');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'AppointmentInfo', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        updatedAt, r'AppointmentInfo', 'updatedAt');
  }

  @override
  AppointmentInfo rebuild(void Function(AppointmentInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentInfoBuilder toBuilder() =>
      new AppointmentInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentInfo &&
        id == other.id &&
        appointmentId == other.appointmentId &&
        time == other.time &&
        date == other.date &&
        status == other.status &&
        verificationCode == other.verificationCode &&
        centerName == other.centerName &&
        centerCoverPhoto == other.centerCoverPhoto &&
        centerAddress == other.centerAddress &&
        centerPhone == other.centerPhone &&
        centerEmail == other.centerEmail &&
        centerLatitude == other.centerLatitude &&
        centerLongitude == other.centerLongitude &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, appointmentId.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, verificationCode.hashCode);
    _$hash = $jc(_$hash, centerName.hashCode);
    _$hash = $jc(_$hash, centerCoverPhoto.hashCode);
    _$hash = $jc(_$hash, centerAddress.hashCode);
    _$hash = $jc(_$hash, centerPhone.hashCode);
    _$hash = $jc(_$hash, centerEmail.hashCode);
    _$hash = $jc(_$hash, centerLatitude.hashCode);
    _$hash = $jc(_$hash, centerLongitude.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppointmentInfo')
          ..add('id', id)
          ..add('appointmentId', appointmentId)
          ..add('time', time)
          ..add('date', date)
          ..add('status', status)
          ..add('verificationCode', verificationCode)
          ..add('centerName', centerName)
          ..add('centerCoverPhoto', centerCoverPhoto)
          ..add('centerAddress', centerAddress)
          ..add('centerPhone', centerPhone)
          ..add('centerEmail', centerEmail)
          ..add('centerLatitude', centerLatitude)
          ..add('centerLongitude', centerLongitude)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AppointmentInfoBuilder
    implements Builder<AppointmentInfo, AppointmentInfoBuilder> {
  _$AppointmentInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _appointmentId;
  String? get appointmentId => _$this._appointmentId;
  set appointmentId(String? appointmentId) =>
      _$this._appointmentId = appointmentId;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  AppointmentInfoStatusEnum? _status;
  AppointmentInfoStatusEnum? get status => _$this._status;
  set status(AppointmentInfoStatusEnum? status) => _$this._status = status;

  String? _verificationCode;
  String? get verificationCode => _$this._verificationCode;
  set verificationCode(String? verificationCode) =>
      _$this._verificationCode = verificationCode;

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

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AppointmentInfoBuilder() {
    AppointmentInfo._defaults(this);
  }

  AppointmentInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _appointmentId = $v.appointmentId;
      _time = $v.time;
      _date = $v.date;
      _status = $v.status;
      _verificationCode = $v.verificationCode;
      _centerName = $v.centerName;
      _centerCoverPhoto = $v.centerCoverPhoto;
      _centerAddress = $v.centerAddress;
      _centerPhone = $v.centerPhone;
      _centerEmail = $v.centerEmail;
      _centerLatitude = $v.centerLatitude;
      _centerLongitude = $v.centerLongitude;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentInfo;
  }

  @override
  void update(void Function(AppointmentInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppointmentInfo build() => _build();

  _$AppointmentInfo _build() {
    final _$result = _$v ??
        new _$AppointmentInfo._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AppointmentInfo', 'id'),
            appointmentId: BuiltValueNullFieldError.checkNotNull(
                appointmentId, r'AppointmentInfo', 'appointmentId'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'AppointmentInfo', 'time'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'AppointmentInfo', 'date'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'AppointmentInfo', 'status'),
            verificationCode: BuiltValueNullFieldError.checkNotNull(
                verificationCode, r'AppointmentInfo', 'verificationCode'),
            centerName: BuiltValueNullFieldError.checkNotNull(
                centerName, r'AppointmentInfo', 'centerName'),
            centerCoverPhoto: BuiltValueNullFieldError.checkNotNull(
                centerCoverPhoto, r'AppointmentInfo', 'centerCoverPhoto'),
            centerAddress: BuiltValueNullFieldError.checkNotNull(
                centerAddress, r'AppointmentInfo', 'centerAddress'),
            centerPhone: BuiltValueNullFieldError.checkNotNull(centerPhone, r'AppointmentInfo', 'centerPhone'),
            centerEmail: BuiltValueNullFieldError.checkNotNull(centerEmail, r'AppointmentInfo', 'centerEmail'),
            centerLatitude: BuiltValueNullFieldError.checkNotNull(centerLatitude, r'AppointmentInfo', 'centerLatitude'),
            centerLongitude: BuiltValueNullFieldError.checkNotNull(centerLongitude, r'AppointmentInfo', 'centerLongitude'),
            createdAt: BuiltValueNullFieldError.checkNotNull(createdAt, r'AppointmentInfo', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(updatedAt, r'AppointmentInfo', 'updatedAt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
