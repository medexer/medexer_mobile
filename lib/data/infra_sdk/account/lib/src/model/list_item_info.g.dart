// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'list_item_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ListItemInfoItemTypeEnum _$listItemInfoItemTypeEnum_favorite =
    const ListItemInfoItemTypeEnum._('favorite');
const ListItemInfoItemTypeEnum _$listItemInfoItemTypeEnum_like =
    const ListItemInfoItemTypeEnum._('like');
const ListItemInfoItemTypeEnum _$listItemInfoItemTypeEnum_viewed =
    const ListItemInfoItemTypeEnum._('viewed');
const ListItemInfoItemTypeEnum _$listItemInfoItemTypeEnum_wishlist =
    const ListItemInfoItemTypeEnum._('wishlist');
const ListItemInfoItemTypeEnum _$listItemInfoItemTypeEnum_searchHistoryEntry =
    const ListItemInfoItemTypeEnum._('searchHistoryEntry');

ListItemInfoItemTypeEnum _$listItemInfoItemTypeEnumValueOf(String name) {
  switch (name) {
    case 'favorite':
      return _$listItemInfoItemTypeEnum_favorite;
    case 'like':
      return _$listItemInfoItemTypeEnum_like;
    case 'viewed':
      return _$listItemInfoItemTypeEnum_viewed;
    case 'wishlist':
      return _$listItemInfoItemTypeEnum_wishlist;
    case 'searchHistoryEntry':
      return _$listItemInfoItemTypeEnum_searchHistoryEntry;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ListItemInfoItemTypeEnum> _$listItemInfoItemTypeEnumValues =
    new BuiltSet<ListItemInfoItemTypeEnum>(const <ListItemInfoItemTypeEnum>[
  _$listItemInfoItemTypeEnum_favorite,
  _$listItemInfoItemTypeEnum_like,
  _$listItemInfoItemTypeEnum_viewed,
  _$listItemInfoItemTypeEnum_wishlist,
  _$listItemInfoItemTypeEnum_searchHistoryEntry,
]);

const ListItemInfoEntityTypeEnum _$listItemInfoEntityTypeEnum_donationCenter =
    const ListItemInfoEntityTypeEnum._('donationCenter');
const ListItemInfoEntityTypeEnum _$listItemInfoEntityTypeEnum_campaign =
    const ListItemInfoEntityTypeEnum._('campaign');

ListItemInfoEntityTypeEnum _$listItemInfoEntityTypeEnumValueOf(String name) {
  switch (name) {
    case 'donationCenter':
      return _$listItemInfoEntityTypeEnum_donationCenter;
    case 'campaign':
      return _$listItemInfoEntityTypeEnum_campaign;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ListItemInfoEntityTypeEnum> _$listItemInfoEntityTypeEnumValues =
    new BuiltSet<ListItemInfoEntityTypeEnum>(const <ListItemInfoEntityTypeEnum>[
  _$listItemInfoEntityTypeEnum_donationCenter,
  _$listItemInfoEntityTypeEnum_campaign,
]);

Serializer<ListItemInfoItemTypeEnum> _$listItemInfoItemTypeEnumSerializer =
    new _$ListItemInfoItemTypeEnumSerializer();
Serializer<ListItemInfoEntityTypeEnum> _$listItemInfoEntityTypeEnumSerializer =
    new _$ListItemInfoEntityTypeEnumSerializer();

class _$ListItemInfoItemTypeEnumSerializer
    implements PrimitiveSerializer<ListItemInfoItemTypeEnum> {
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
  final Iterable<Type> types = const <Type>[ListItemInfoItemTypeEnum];
  @override
  final String wireName = 'ListItemInfoItemTypeEnum';

  @override
  Object serialize(Serializers serializers, ListItemInfoItemTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListItemInfoItemTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListItemInfoItemTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListItemInfoEntityTypeEnumSerializer
    implements PrimitiveSerializer<ListItemInfoEntityTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'donationCenter': 'donation-center',
    'campaign': 'campaign',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'donation-center': 'donationCenter',
    'campaign': 'campaign',
  };

  @override
  final Iterable<Type> types = const <Type>[ListItemInfoEntityTypeEnum];
  @override
  final String wireName = 'ListItemInfoEntityTypeEnum';

  @override
  Object serialize(Serializers serializers, ListItemInfoEntityTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ListItemInfoEntityTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ListItemInfoEntityTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ListItemInfo extends ListItemInfo {
  @override
  final String id;
  @override
  final ListItemInfoItemTypeEnum itemType;
  @override
  final String itemId;
  @override
  final ListItemInfoEntityTypeEnum entityType;

  factory _$ListItemInfo([void Function(ListItemInfoBuilder)? updates]) =>
      (new ListItemInfoBuilder()..update(updates))._build();

  _$ListItemInfo._(
      {required this.id,
      required this.itemType,
      required this.itemId,
      required this.entityType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ListItemInfo', 'id');
    BuiltValueNullFieldError.checkNotNull(
        itemType, r'ListItemInfo', 'itemType');
    BuiltValueNullFieldError.checkNotNull(itemId, r'ListItemInfo', 'itemId');
    BuiltValueNullFieldError.checkNotNull(
        entityType, r'ListItemInfo', 'entityType');
  }

  @override
  ListItemInfo rebuild(void Function(ListItemInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListItemInfoBuilder toBuilder() => new ListItemInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListItemInfo &&
        id == other.id &&
        itemType == other.itemType &&
        itemId == other.itemId &&
        entityType == other.entityType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListItemInfo')
          ..add('id', id)
          ..add('itemType', itemType)
          ..add('itemId', itemId)
          ..add('entityType', entityType))
        .toString();
  }
}

class ListItemInfoBuilder
    implements Builder<ListItemInfo, ListItemInfoBuilder> {
  _$ListItemInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListItemInfoItemTypeEnum? _itemType;
  ListItemInfoItemTypeEnum? get itemType => _$this._itemType;
  set itemType(ListItemInfoItemTypeEnum? itemType) =>
      _$this._itemType = itemType;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  ListItemInfoEntityTypeEnum? _entityType;
  ListItemInfoEntityTypeEnum? get entityType => _$this._entityType;
  set entityType(ListItemInfoEntityTypeEnum? entityType) =>
      _$this._entityType = entityType;

  ListItemInfoBuilder() {
    ListItemInfo._defaults(this);
  }

  ListItemInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _itemType = $v.itemType;
      _itemId = $v.itemId;
      _entityType = $v.entityType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListItemInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListItemInfo;
  }

  @override
  void update(void Function(ListItemInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListItemInfo build() => _build();

  _$ListItemInfo _build() {
    final _$result = _$v ??
        new _$ListItemInfo._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ListItemInfo', 'id'),
            itemType: BuiltValueNullFieldError.checkNotNull(
                itemType, r'ListItemInfo', 'itemType'),
            itemId: BuiltValueNullFieldError.checkNotNull(
                itemId, r'ListItemInfo', 'itemId'),
            entityType: BuiltValueNullFieldError.checkNotNull(
                entityType, r'ListItemInfo', 'entityType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
