// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotificationInfoTypeEnum _$notificationInfoTypeEnum_default_ =
    const NotificationInfoTypeEnum._('default_');
const NotificationInfoTypeEnum _$notificationInfoTypeEnum_supportInquiry =
    const NotificationInfoTypeEnum._('supportInquiry');
const NotificationInfoTypeEnum _$notificationInfoTypeEnum_appointmentReminder =
    const NotificationInfoTypeEnum._('appointmentReminder');
const NotificationInfoTypeEnum
    _$notificationInfoTypeEnum_appointmentConfirmation =
    const NotificationInfoTypeEnum._('appointmentConfirmation');

NotificationInfoTypeEnum _$notificationInfoTypeEnumValueOf(String name) {
  switch (name) {
    case 'default_':
      return _$notificationInfoTypeEnum_default_;
    case 'supportInquiry':
      return _$notificationInfoTypeEnum_supportInquiry;
    case 'appointmentReminder':
      return _$notificationInfoTypeEnum_appointmentReminder;
    case 'appointmentConfirmation':
      return _$notificationInfoTypeEnum_appointmentConfirmation;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<NotificationInfoTypeEnum> _$notificationInfoTypeEnumValues =
    new BuiltSet<NotificationInfoTypeEnum>(const <NotificationInfoTypeEnum>[
  _$notificationInfoTypeEnum_default_,
  _$notificationInfoTypeEnum_supportInquiry,
  _$notificationInfoTypeEnum_appointmentReminder,
  _$notificationInfoTypeEnum_appointmentConfirmation,
]);

Serializer<NotificationInfoTypeEnum> _$notificationInfoTypeEnumSerializer =
    new _$NotificationInfoTypeEnumSerializer();

class _$NotificationInfoTypeEnumSerializer
    implements PrimitiveSerializer<NotificationInfoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'supportInquiry': 'support_inquiry',
    'appointmentReminder': 'appointment_reminder',
    'appointmentConfirmation': 'appointment_confirmation',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'support_inquiry': 'supportInquiry',
    'appointment_reminder': 'appointmentReminder',
    'appointment_confirmation': 'appointmentConfirmation',
  };

  @override
  final Iterable<Type> types = const <Type>[NotificationInfoTypeEnum];
  @override
  final String wireName = 'NotificationInfoTypeEnum';

  @override
  Object serialize(Serializers serializers, NotificationInfoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotificationInfoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotificationInfoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotificationInfo extends NotificationInfo {
  @override
  final String? id;
  @override
  final String? subject;
  @override
  final String? message;
  @override
  final NotificationInfoTypeEnum? type;
  @override
  final String? appointment;
  @override
  final bool? isRead;

  factory _$NotificationInfo(
          [void Function(NotificationInfoBuilder)? updates]) =>
      (new NotificationInfoBuilder()..update(updates))._build();

  _$NotificationInfo._(
      {this.id,
      this.subject,
      this.message,
      this.type,
      this.appointment,
      this.isRead})
      : super._();

  @override
  NotificationInfo rebuild(void Function(NotificationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationInfoBuilder toBuilder() =>
      new NotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationInfo &&
        id == other.id &&
        subject == other.subject &&
        message == other.message &&
        type == other.type &&
        appointment == other.appointment &&
        isRead == other.isRead;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, subject.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, appointment.hashCode);
    _$hash = $jc(_$hash, isRead.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationInfo')
          ..add('id', id)
          ..add('subject', subject)
          ..add('message', message)
          ..add('type', type)
          ..add('appointment', appointment)
          ..add('isRead', isRead))
        .toString();
  }
}

class NotificationInfoBuilder
    implements Builder<NotificationInfo, NotificationInfoBuilder> {
  _$NotificationInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  NotificationInfoTypeEnum? _type;
  NotificationInfoTypeEnum? get type => _$this._type;
  set type(NotificationInfoTypeEnum? type) => _$this._type = type;

  String? _appointment;
  String? get appointment => _$this._appointment;
  set appointment(String? appointment) => _$this._appointment = appointment;

  bool? _isRead;
  bool? get isRead => _$this._isRead;
  set isRead(bool? isRead) => _$this._isRead = isRead;

  NotificationInfoBuilder() {
    NotificationInfo._defaults(this);
  }

  NotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _subject = $v.subject;
      _message = $v.message;
      _type = $v.type;
      _appointment = $v.appointment;
      _isRead = $v.isRead;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationInfo;
  }

  @override
  void update(void Function(NotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationInfo build() => _build();

  _$NotificationInfo _build() {
    final _$result = _$v ??
        new _$NotificationInfo._(
            id: id,
            subject: subject,
            message: message,
            type: type,
            appointment: appointment,
            isRead: isRead);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
