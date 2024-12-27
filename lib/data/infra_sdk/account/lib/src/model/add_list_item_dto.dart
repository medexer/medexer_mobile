// @dart=3.5
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_list_item_dto.g.dart';

/// AddListItemDTO
///
/// Properties:
/// * [itemId] - ID of the item.
/// * [itemType] - Type of the list item.
/// * [entityType] - Type of the list entity.
@BuiltValue()
abstract class AddListItemDTO implements Built<AddListItemDTO, AddListItemDTOBuilder> {
  /// ID of the item.
  @BuiltValueField(wireName: r'itemId')
  String get itemId;

  /// Type of the list item.
  @BuiltValueField(wireName: r'itemType')
  AddListItemDTOItemTypeEnum get itemType;
  // enum itemTypeEnum {  favorite,  like,  viewed,  wishlist,  search-history-entry,  };

  /// Type of the list entity.
  @BuiltValueField(wireName: r'entityType')
  AddListItemDTOEntityTypeEnum get entityType;
  // enum entityTypeEnum {  donation-center,  campaign,  };

  AddListItemDTO._();

  factory AddListItemDTO([void updates(AddListItemDTOBuilder b)]) = _$AddListItemDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddListItemDTOBuilder b) => b
      ..itemType = const AddListItemDTOItemTypeEnum._('favorite')
      ..entityType = const AddListItemDTOEntityTypeEnum._('donation-center');

  @BuiltValueSerializer(custom: true)
  static Serializer<AddListItemDTO> get serializer => _$AddListItemDTOSerializer();
}

class _$AddListItemDTOSerializer implements PrimitiveSerializer<AddListItemDTO> {
  @override
  final Iterable<Type> types = const [AddListItemDTO, _$AddListItemDTO];

  @override
  final String wireName = r'AddListItemDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddListItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'itemId';
    yield serializers.serialize(
      object.itemId,
      specifiedType: const FullType(String),
    );
    yield r'itemType';
    yield serializers.serialize(
      object.itemType,
      specifiedType: const FullType(AddListItemDTOItemTypeEnum),
    );
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(AddListItemDTOEntityTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddListItemDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddListItemDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'itemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemId = valueDes;
          break;
        case r'itemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AddListItemDTOItemTypeEnum),
          ) as AddListItemDTOItemTypeEnum;
          result.itemType = valueDes;
          break;
        case r'entityType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AddListItemDTOEntityTypeEnum),
          ) as AddListItemDTOEntityTypeEnum;
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
  AddListItemDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddListItemDTOBuilder();
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

class AddListItemDTOItemTypeEnum extends EnumClass {

  /// Type of the list item.
  @BuiltValueEnumConst(wireName: r'favorite')
  static const AddListItemDTOItemTypeEnum favorite = _$addListItemDTOItemTypeEnum_favorite;
  /// Type of the list item.
  @BuiltValueEnumConst(wireName: r'like')
  static const AddListItemDTOItemTypeEnum like = _$addListItemDTOItemTypeEnum_like;
  /// Type of the list item.
  @BuiltValueEnumConst(wireName: r'viewed')
  static const AddListItemDTOItemTypeEnum viewed = _$addListItemDTOItemTypeEnum_viewed;
  /// Type of the list item.
  @BuiltValueEnumConst(wireName: r'wishlist')
  static const AddListItemDTOItemTypeEnum wishlist = _$addListItemDTOItemTypeEnum_wishlist;
  /// Type of the list item.
  @BuiltValueEnumConst(wireName: r'search-history-entry')
  static const AddListItemDTOItemTypeEnum searchHistoryEntry = _$addListItemDTOItemTypeEnum_searchHistoryEntry;

  static Serializer<AddListItemDTOItemTypeEnum> get serializer => _$addListItemDTOItemTypeEnumSerializer;

  const AddListItemDTOItemTypeEnum._(String name): super(name);

  static BuiltSet<AddListItemDTOItemTypeEnum> get values => _$addListItemDTOItemTypeEnumValues;
  static AddListItemDTOItemTypeEnum valueOf(String name) => _$addListItemDTOItemTypeEnumValueOf(name);
}

class AddListItemDTOEntityTypeEnum extends EnumClass {

  /// Type of the list entity.
  @BuiltValueEnumConst(wireName: r'donation-center')
  static const AddListItemDTOEntityTypeEnum donationCenter = _$addListItemDTOEntityTypeEnum_donationCenter;
  /// Type of the list entity.
  @BuiltValueEnumConst(wireName: r'campaign')
  static const AddListItemDTOEntityTypeEnum campaign = _$addListItemDTOEntityTypeEnum_campaign;

  static Serializer<AddListItemDTOEntityTypeEnum> get serializer => _$addListItemDTOEntityTypeEnumSerializer;

  const AddListItemDTOEntityTypeEnum._(String name): super(name);

  static BuiltSet<AddListItemDTOEntityTypeEnum> get values => _$addListItemDTOEntityTypeEnumValues;
  static AddListItemDTOEntityTypeEnum valueOf(String name) => _$addListItemDTOEntityTypeEnumValueOf(name);
}

