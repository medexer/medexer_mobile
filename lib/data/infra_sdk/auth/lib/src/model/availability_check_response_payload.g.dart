// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'availability_check_response_payload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailabilityCheckResponsePayload
    extends AvailabilityCheckResponsePayload {
  @override
  final bool isAvailable;

  factory _$AvailabilityCheckResponsePayload(
          [void Function(AvailabilityCheckResponsePayloadBuilder)? updates]) =>
      (new AvailabilityCheckResponsePayloadBuilder()..update(updates))._build();

  _$AvailabilityCheckResponsePayload._({required this.isAvailable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isAvailable, r'AvailabilityCheckResponsePayload', 'isAvailable');
  }

  @override
  AvailabilityCheckResponsePayload rebuild(
          void Function(AvailabilityCheckResponsePayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailabilityCheckResponsePayloadBuilder toBuilder() =>
      new AvailabilityCheckResponsePayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailabilityCheckResponsePayload &&
        isAvailable == other.isAvailable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailabilityCheckResponsePayload')
          ..add('isAvailable', isAvailable))
        .toString();
  }
}

class AvailabilityCheckResponsePayloadBuilder
    implements
        Builder<AvailabilityCheckResponsePayload,
            AvailabilityCheckResponsePayloadBuilder> {
  _$AvailabilityCheckResponsePayload? _$v;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  AvailabilityCheckResponsePayloadBuilder() {
    AvailabilityCheckResponsePayload._defaults(this);
  }

  AvailabilityCheckResponsePayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isAvailable = $v.isAvailable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailabilityCheckResponsePayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvailabilityCheckResponsePayload;
  }

  @override
  void update(void Function(AvailabilityCheckResponsePayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailabilityCheckResponsePayload build() => _build();

  _$AvailabilityCheckResponsePayload _build() {
    final _$result = _$v ??
        new _$AvailabilityCheckResponsePayload._(
            isAvailable: BuiltValueNullFieldError.checkNotNull(isAvailable,
                r'AvailabilityCheckResponsePayload', 'isAvailable'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
