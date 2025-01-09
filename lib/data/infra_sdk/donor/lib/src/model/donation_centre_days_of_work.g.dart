// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'donation_centre_days_of_work.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DonationCentreDaysOfWork extends DonationCentreDaysOfWork {
  @override
  final String? id;
  @override
  final String? day;
  @override
  final String? open;
  @override
  final String? close;
  @override
  final bool? alwaysOpen;
  @override
  final bool? closed;

  factory _$DonationCentreDaysOfWork(
          [void Function(DonationCentreDaysOfWorkBuilder)? updates]) =>
      (new DonationCentreDaysOfWorkBuilder()..update(updates))._build();

  _$DonationCentreDaysOfWork._(
      {this.id, this.day, this.open, this.close, this.alwaysOpen, this.closed})
      : super._();

  @override
  DonationCentreDaysOfWork rebuild(
          void Function(DonationCentreDaysOfWorkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DonationCentreDaysOfWorkBuilder toBuilder() =>
      new DonationCentreDaysOfWorkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DonationCentreDaysOfWork &&
        id == other.id &&
        day == other.day &&
        open == other.open &&
        close == other.close &&
        alwaysOpen == other.alwaysOpen &&
        closed == other.closed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jc(_$hash, open.hashCode);
    _$hash = $jc(_$hash, close.hashCode);
    _$hash = $jc(_$hash, alwaysOpen.hashCode);
    _$hash = $jc(_$hash, closed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DonationCentreDaysOfWork')
          ..add('id', id)
          ..add('day', day)
          ..add('open', open)
          ..add('close', close)
          ..add('alwaysOpen', alwaysOpen)
          ..add('closed', closed))
        .toString();
  }
}

class DonationCentreDaysOfWorkBuilder
    implements
        Builder<DonationCentreDaysOfWork, DonationCentreDaysOfWorkBuilder> {
  _$DonationCentreDaysOfWork? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _day;
  String? get day => _$this._day;
  set day(String? day) => _$this._day = day;

  String? _open;
  String? get open => _$this._open;
  set open(String? open) => _$this._open = open;

  String? _close;
  String? get close => _$this._close;
  set close(String? close) => _$this._close = close;

  bool? _alwaysOpen;
  bool? get alwaysOpen => _$this._alwaysOpen;
  set alwaysOpen(bool? alwaysOpen) => _$this._alwaysOpen = alwaysOpen;

  bool? _closed;
  bool? get closed => _$this._closed;
  set closed(bool? closed) => _$this._closed = closed;

  DonationCentreDaysOfWorkBuilder() {
    DonationCentreDaysOfWork._defaults(this);
  }

  DonationCentreDaysOfWorkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _day = $v.day;
      _open = $v.open;
      _close = $v.close;
      _alwaysOpen = $v.alwaysOpen;
      _closed = $v.closed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DonationCentreDaysOfWork other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DonationCentreDaysOfWork;
  }

  @override
  void update(void Function(DonationCentreDaysOfWorkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DonationCentreDaysOfWork build() => _build();

  _$DonationCentreDaysOfWork _build() {
    final _$result = _$v ??
        new _$DonationCentreDaysOfWork._(
            id: id,
            day: day,
            open: open,
            close: close,
            alwaysOpen: alwaysOpen,
            closed: closed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
