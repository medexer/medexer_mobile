// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'add_donation_center_rating_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddDonationCenterRatingDTO extends AddDonationCenterRatingDTO {
  @override
  final String rating;
  @override
  final String comment;

  factory _$AddDonationCenterRatingDTO(
          [void Function(AddDonationCenterRatingDTOBuilder)? updates]) =>
      (new AddDonationCenterRatingDTOBuilder()..update(updates))._build();

  _$AddDonationCenterRatingDTO._({required this.rating, required this.comment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rating, r'AddDonationCenterRatingDTO', 'rating');
    BuiltValueNullFieldError.checkNotNull(
        comment, r'AddDonationCenterRatingDTO', 'comment');
  }

  @override
  AddDonationCenterRatingDTO rebuild(
          void Function(AddDonationCenterRatingDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddDonationCenterRatingDTOBuilder toBuilder() =>
      new AddDonationCenterRatingDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddDonationCenterRatingDTO &&
        rating == other.rating &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddDonationCenterRatingDTO')
          ..add('rating', rating)
          ..add('comment', comment))
        .toString();
  }
}

class AddDonationCenterRatingDTOBuilder
    implements
        Builder<AddDonationCenterRatingDTO, AddDonationCenterRatingDTOBuilder> {
  _$AddDonationCenterRatingDTO? _$v;

  String? _rating;
  String? get rating => _$this._rating;
  set rating(String? rating) => _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  AddDonationCenterRatingDTOBuilder() {
    AddDonationCenterRatingDTO._defaults(this);
  }

  AddDonationCenterRatingDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rating = $v.rating;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddDonationCenterRatingDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddDonationCenterRatingDTO;
  }

  @override
  void update(void Function(AddDonationCenterRatingDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddDonationCenterRatingDTO build() => _build();

  _$AddDonationCenterRatingDTO _build() {
    final _$result = _$v ??
        new _$AddDonationCenterRatingDTO._(
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, r'AddDonationCenterRatingDTO', 'rating'),
            comment: BuiltValueNullFieldError.checkNotNull(
                comment, r'AddDonationCenterRatingDTO', 'comment'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
