// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'donation_center_availability.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DonationCenterAvailability extends DonationCenterAvailability {
  @override
  final DateTime? date;
  @override
  final bool? isOpen;
  @override
  final BuiltList<String>? availableTimeSlots;

  factory _$DonationCenterAvailability(
          [void Function(DonationCenterAvailabilityBuilder)? updates]) =>
      (new DonationCenterAvailabilityBuilder()..update(updates))._build();

  _$DonationCenterAvailability._(
      {this.date, this.isOpen, this.availableTimeSlots})
      : super._();

  @override
  DonationCenterAvailability rebuild(
          void Function(DonationCenterAvailabilityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonationCenterAvailabilityBuilder toBuilder() =>
      new DonationCenterAvailabilityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonationCenterAvailability &&
        date == other.date &&
        isOpen == other.isOpen &&
        availableTimeSlots == other.availableTimeSlots;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, isOpen.hashCode);
    _$hash = $jc(_$hash, availableTimeSlots.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DonationCenterAvailability')
          ..add('date', date)
          ..add('isOpen', isOpen)
          ..add('availableTimeSlots', availableTimeSlots))
        .toString();
  }
}

class DonationCenterAvailabilityBuilder
    implements
        Builder<DonationCenterAvailability, DonationCenterAvailabilityBuilder> {
  _$DonationCenterAvailability? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  bool? _isOpen;
  bool? get isOpen => _$this._isOpen;
  set isOpen(bool? isOpen) => _$this._isOpen = isOpen;

  ListBuilder<String>? _availableTimeSlots;
  ListBuilder<String> get availableTimeSlots =>
      _$this._availableTimeSlots ??= new ListBuilder<String>();
  set availableTimeSlots(ListBuilder<String>? availableTimeSlots) =>
      _$this._availableTimeSlots = availableTimeSlots;

  DonationCenterAvailabilityBuilder() {
    DonationCenterAvailability._defaults(this);
  }

  DonationCenterAvailabilityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _isOpen = $v.isOpen;
      _availableTimeSlots = $v.availableTimeSlots?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonationCenterAvailability other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonationCenterAvailability;
  }

  @override
  void update(void Function(DonationCenterAvailabilityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DonationCenterAvailability build() => _build();

  _$DonationCenterAvailability _build() {
    _$DonationCenterAvailability _$result;
    try {
      _$result = _$v ??
          new _$DonationCenterAvailability._(
              date: date,
              isOpen: isOpen,
              availableTimeSlots: _availableTimeSlots?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availableTimeSlots';
        _availableTimeSlots?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DonationCenterAvailability', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
