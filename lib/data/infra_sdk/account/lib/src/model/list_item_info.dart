// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_item_info.g.dart';

/// ListItemInfo
///
/// Properties:
/// * [id] - List Item ID
/// * [itemType] - List Item Type
/// * [itemId] - ID of the item.
/// * [entityType] - Type of the list entity.
@BuiltValue()
abstract class ListItemInfo implements Built<ListItemInfo, ListItemInfoBuilder> {
  /// List Item ID
  @BuiltValueField(wireName: r'id')
  String get id;

  /// List Item Type
  @BuiltValueField(wireName: r'itemType')
  ListItemInfoItemTypeEnum get itemType;
  // enum itemTypeEnum {  favorite,  like,  viewed,  wishlist,  search-history-entry,  };

  /// ID of the item.
  @BuiltValueField(wireName: r'itemId')
  String get itemId;

  /// Type of the list entity.
  @BuiltValueField(wireName: r'entityType')
  ListItemInfoEntityTypeEnum get entityType;
  // enum entityTypeEnum {  donation-center,  campaign,  };

  ListItemInfo._();

  factory ListItemInfo([void updates(ListItemInfoBuilder b)]) = _$ListItemInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListItemInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListItemInfo> get serializer => _$ListItemInfoSerializer();
}

class _$ListItemInfoSerializer implements PrimitiveSerializer<ListItemInfo> {
  @override
  final Iterable<Type> types = const [ListItemInfo, _$ListItemInfo];

  @override
  final String wireName = r'ListItemInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListItemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'itemType';
    yield serializers.serialize(
      object.itemType,
      specifiedType: const FullType(ListItemInfoItemTypeEnum),
    );
    yield r'itemId';
    yield serializers.serialize(
      object.itemId,
      specifiedType: const FullType(String),
    );
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(ListItemInfoEntityTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListItemInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListItemInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'itemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListItemInfoItemTypeEnum),
          ) as ListItemInfoItemTypeEnum;
          result.itemType = valueDes;
          break;
        case r'itemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemId = valueDes;
          break;
        case r'entityType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ListItemInfoEntityTypeEnum),
          ) as ListItemInfoEntityTypeEnum;
          result.entityType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListItemInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListItemInfoBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class ListItemInfoItemTypeEnum extends EnumClass {

  /// List Item Type
  @BuiltValueEnumConst(wireName: r'favorite')
  static const ListItemInfoItemTypeEnum favorite = _$listItemInfoItemTypeEnum_favorite;
  /// List Item Type
  @BuiltValueEnumConst(wireName: r'like')
  static const ListItemInfoItemTypeEnum like = _$listItemInfoItemTypeEnum_like;
  /// List Item Type
  @BuiltValueEnumConst(wireName: r'viewed')
  static const ListItemInfoItemTypeEnum viewed = _$listItemInfoItemTypeEnum_viewed;
  /// List Item Type
  @BuiltValueEnumConst(wireName: r'wishlist')
  static const ListItemInfoItemTypeEnum wishlist = _$listItemInfoItemTypeEnum_wishlist;
  /// List Item Type
  @BuiltValueEnumConst(wireName: r'search-history-entry')
  static const ListItemInfoItemTypeEnum searchHistoryEntry = _$listItemInfoItemTypeEnum_searchHistoryEntry;

  static Serializer<ListItemInfoItemTypeEnum> get serializer => _$listItemInfoItemTypeEnumSerializer;

  const ListItemInfoItemTypeEnum._(String name): super(name);

  static BuiltSet<ListItemInfoItemTypeEnum> get values => _$listItemInfoItemTypeEnumValues;
  static ListItemInfoItemTypeEnum valueOf(String name) => _$listItemInfoItemTypeEnumValueOf(name);
}

class ListItemInfoEntityTypeEnum extends EnumClass {

  /// Type of the list entity.
  @BuiltValueEnumConst(wireName: r'donation-center')
  static const ListItemInfoEntityTypeEnum donationCenter = _$listItemInfoEntityTypeEnum_donationCenter;
  /// Type of the list entity.
  @BuiltValueEnumConst(wireName: r'campaign')
  static const ListItemInfoEntityTypeEnum campaign = _$listItemInfoEntityTypeEnum_campaign;

  static Serializer<ListItemInfoEntityTypeEnum> get serializer => _$listItemInfoEntityTypeEnumSerializer;

  const ListItemInfoEntityTypeEnum._(String name): super(name);

  static BuiltSet<ListItemInfoEntityTypeEnum> get values => _$listItemInfoEntityTypeEnumValues;
  static ListItemInfoEntityTypeEnum valueOf(String name) => _$listItemInfoEntityTypeEnumValueOf(name);
}

