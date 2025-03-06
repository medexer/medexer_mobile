// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'create_appointment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAppointmentDTO extends CreateAppointmentDTO {
  @override
  final String time;
  @override
  final String date;
  @override
  final num donationCenter;

  factory _$CreateAppointmentDTO(
          [void Function(CreateAppointmentDTOBuilder)? updates]) =>
      (new CreateAppointmentDTOBuilder()..update(updates))._build();

  _$CreateAppointmentDTO._(
      {required this.time, required this.date, required this.donationCenter})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        time, r'CreateAppointmentDTO', 'time');
    BuiltValueNullFieldError.checkNotNull(
        date, r'CreateAppointmentDTO', 'date');
    BuiltValueNullFieldError.checkNotNull(
        donationCenter, r'CreateAppointmentDTO', 'donationCenter');
  }

  @override
  CreateAppointmentDTO rebuild(
          void Function(CreateAppointmentDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateAppointmentDTOBuilder toBuilder() =>
      new CreateAppointmentDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAppointmentDTO &&
        time == other.time &&
        date == other.date &&
        donationCenter == other.donationCenter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, donationCenter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAppointmentDTO')
          ..add('time', time)
          ..add('date', date)
          ..add('donationCenter', donationCenter))
        .toString();
  }
}

class CreateAppointmentDTOBuilder
    implements Builder<CreateAppointmentDTO, CreateAppointmentDTOBuilder> {
  _$CreateAppointmentDTO? _$v;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  num? _donationCenter;
  num? get donationCenter => _$this._donationCenter;
  set donationCenter(num? donationCenter) =>
      _$this._donationCenter = donationCenter;

  CreateAppointmentDTOBuilder() {
    CreateAppointmentDTO._defaults(this);
  }

  CreateAppointmentDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _date = $v.date;
      _donationCenter = $v.donationCenter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAppointmentDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateAppointmentDTO;
  }

  @override
  void update(void Function(CreateAppointmentDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAppointmentDTO build() => _build();

  _$CreateAppointmentDTO _build() {
    final _$result = _$v ??
        new _$CreateAppointmentDTO._(
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'CreateAppointmentDTO', 'time'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'CreateAppointmentDTO', 'date'),
            donationCenter: BuiltValueNullFieldError.checkNotNull(
                donationCenter, r'CreateAppointmentDTO', 'donationCenter'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
