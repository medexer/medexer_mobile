// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'add_list_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AddListItemDTOItemTypeEnum _$addListItemDTOItemTypeEnum_favorite =
    const AddListItemDTOItemTypeEnum._('favorite');
const AddListItemDTOItemTypeEnum _$addListItemDTOItemTypeEnum_like =
    const AddListItemDTOItemTypeEnum._('like');
const AddListItemDTOItemTypeEnum _$addListItemDTOItemTypeEnum_viewed =
    const AddListItemDTOItemTypeEnum._('viewed');
const AddListItemDTOItemTypeEnum _$addListItemDTOItemTypeEnum_wishlist =
    const AddListItemDTOItemTypeEnum._('wishlist');
const AddListItemDTOItemTypeEnum
    _$addListItemDTOItemTypeEnum_searchHistoryEntry =
    const AddListItemDTOItemTypeEnum._('searchHistoryEntry');

AddListItemDTOItemTypeEnum _$addListItemDTOItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'favorite':
      return _$addListItemDTOItemTypeEnum_favorite;
    case 'like':
      return _$addListItemDTOItemTypeEnum_like;
    case 'viewed':
      return _$addListItemDTOItemTypeEnum_viewed;
    case 'wishlist':
      return _$addListItemDTOItemTypeEnum_wishlist;
    case 'searchHistoryEntry':
      return _$addListItemDTOItemTypeEnum_searchHistoryEntry;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AddListItemDTOItemTypeEnum> _$addListItemDTOItemTypeEnumValues =
    new BuiltSet<AddListItemDTOItemTypeEnum>(const <AddListItemDTOItemTypeEnum>[
  _$addListItemDTOItemTypeEnum_favorite,
  _$addListItemDTOItemTypeEnum_like,
  _$addListItemDTOItemTypeEnum_viewed,
  _$addListItemDTOItemTypeEnum_wishlist,
  _$addListItemDTOItemTypeEnum_searchHistoryEntry,
]);

const AddListItemDTOEntityTypeEnum
    _$addListItemDTOEntityTypeEnum_donationCenter =
    const AddListItemDTOEntityTypeEnum._('donationCenter');
const AddListItemDTOEntityTypeEnum _$addListItemDTOEntityTypeEnum_campaign =
    const AddListItemDTOEntityTypeEnum._('campaign');

AddListItemDTOEntityTypeEnum _$addListItemDTOEntityTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'donationCenter':
      return _$addListItemDTOEntityTypeEnum_donationCenter;
    case 'campaign':
      return _$addListItemDTOEntityTypeEnum_campaign;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AddListItemDTOEntityTypeEnum>
    _$addListItemDTOEntityTypeEnumValues = new BuiltSet<
        AddListItemDTOEntityTypeEnum>(const <AddListItemDTOEntityTypeEnum>[
  _$addListItemDTOEntityTypeEnum_donationCenter,
  _$addListItemDTOEntityTypeEnum_campaign,
]);

Serializer<AddListItemDTOItemTypeEnum> _$addListItemDTOItemTypeEnumSerializer =
    new _$AddListItemDTOItemTypeEnumSerializer();
Serializer<AddListItemDTOEntityTypeEnum>
    _$addListItemDTOEntityTypeEnumSerializer =
    new _$AddListItemDTOEntityTypeEnumSerializer();

class _$AddListItemDTOItemTypeEnumSerializer
    implements PrimitiveSerializer<AddListItemDTOItemTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'favorite': 'favorite',
    'like': 'like',
    'viewed': 'viewed',
    'wishlist': 'wishlist',
    'searchHistoryEntry': 'search-history-entry',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'favorite': 'favorite',
    'like': 'like',
    'viewed': 'viewed',
    'wishlist': 'wishlist',
    'search-history-entry': 'searchHistoryEntry',
  };

  @override
  final Iterable<Type> types = const <Type>[AddListItemDTOItemTypeEnum];
  @override
  final String wireName = 'AddListItemDTOItemTypeEnum';

  @override
  Object serialize(Serializers serializers, AddListItemDTOItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AddListItemDTOItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AddListItemDTOItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AddListItemDTOEntityTypeEnumSerializer
    implements PrimitiveSerializer<AddListItemDTOEntityTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'donationCenter': 'donation-center',
    'campaign': 'campaign',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'donation-center': 'donationCenter',
    'campaign': 'campaign',
  };

  @override
  final Iterable<Type> types = const <Type>[AddListItemDTOEntityTypeEnum];
  @override
  final String wireName = 'AddListItemDTOEntityTypeEnum';

  @override
  Object serialize(Serializers serializers, AddListItemDTOEntityTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AddListItemDTOEntityTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AddListItemDTOEntityTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AddListItemDTO extends AddListItemDTO {
  @override
  final String itemId;
  @override
  final AddListItemDTOItemTypeEnum itemType;
  @override
  final AddListItemDTOEntityTypeEnum entityType;

  factory _$AddListItemDTO([void Function(AddListItemDTOBuilder)? updates]) =>
      (new AddListItemDTOBuilder()..update(updates))._build();

  _$AddListItemDTO._(
      {required this.itemId, required this.itemType, required this.entityType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(itemId, r'AddListItemDTO', 'itemId');
    BuiltValueNullFieldError.checkNotNull(
        itemType, r'AddListItemDTO', 'itemType');
    BuiltValueNullFieldError.checkNotNull(
        entityType, r'AddListItemDTO', 'entityType');
  }

  @override
  AddListItemDTO rebuild(void Function(AddListItemDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddListItemDTOBuilder toBuilder() =>
      new AddListItemDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddListItemDTO &&
        itemId == other.itemId &&
        itemType == other.itemType &&
        entityType == other.entityType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddListItemDTO')
          ..add('itemId', itemId)
          ..add('itemType', itemType)
          ..add('entityType', entityType))
        .toString();
  }
}

class AddListItemDTOBuilder
    implements Builder<AddListItemDTO, AddListItemDTOBuilder> {
  _$AddListItemDTO? _$v;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  AddListItemDTOItemTypeEnum? _itemType;
  AddListItemDTOItemTypeEnum? get itemType => _$this._itemType;
  set itemType(AddListItemDTOItemTypeEnum? itemType) =>
      _$this._itemType = itemType;

  AddListItemDTOEntityTypeEnum? _entityType;
  AddListItemDTOEntityTypeEnum? get entityType => _$this._entityType;
  set entityType(AddListItemDTOEntityTypeEnum? entityType) =>
      _$this._entityType = entityType;

  AddListItemDTOBuilder() {
    AddListItemDTO._defaults(this);
  }

  AddListItemDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemId = $v.itemId;
      _itemType = $v.itemType;
      _entityType = $v.entityType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddListItemDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddListItemDTO;
  }

  @override
  void update(void Function(AddListItemDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddListItemDTO build() => _build();

  _$AddListItemDTO _build() {
    final _$result = _$v ??
        new _$AddListItemDTO._(
            itemId: BuiltValueNullFieldError.checkNotNull(
                itemId, r'AddListItemDTO', 'itemId'),
            itemType: BuiltValueNullFieldError.checkNotNull(
                itemType, r'AddListItemDTO', 'itemType'),
            entityType: BuiltValueNullFieldError.checkNotNull(
                entityType, r'AddListItemDTO', 'entityType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
