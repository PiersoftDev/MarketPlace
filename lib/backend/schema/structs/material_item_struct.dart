import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'material_item_struct.g.dart';

abstract class MaterialItemStruct
    implements Built<MaterialItemStruct, MaterialItemStructBuilder> {
  static Serializer<MaterialItemStruct> get serializer =>
      _$materialItemStructSerializer;

  String? get id;

  double? get quantity;

  String? get uom;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(MaterialItemStructBuilder builder) => builder
    ..id = ''
    ..quantity = 0.0
    ..uom = ''
    ..firestoreUtilData = FirestoreUtilData();

  MaterialItemStruct._();
  factory MaterialItemStruct(
          [void Function(MaterialItemStructBuilder) updates]) =
      _$MaterialItemStruct;
}

MaterialItemStruct createMaterialItemStruct({
  String? id,
  double? quantity,
  String? uom,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MaterialItemStruct(
      (m) => m
        ..id = id
        ..quantity = quantity
        ..uom = uom
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

MaterialItemStruct? updateMaterialItemStruct(
  MaterialItemStruct? materialItem, {
  bool clearUnsetFields = true,
}) =>
    materialItem != null
        ? (materialItem.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addMaterialItemStructData(
  Map<String, dynamic> firestoreData,
  MaterialItemStruct? materialItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (materialItem == null) {
    return;
  }
  if (materialItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && materialItem.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final materialItemData =
      getMaterialItemFirestoreData(materialItem, forFieldValue);
  final nestedData =
      materialItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = materialItem.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getMaterialItemFirestoreData(
  MaterialItemStruct? materialItem, [
  bool forFieldValue = false,
]) {
  if (materialItem == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(MaterialItemStruct.serializer, materialItem);

  // Add any Firestore field values
  materialItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMaterialItemListFirestoreData(
  List<MaterialItemStruct>? materialItems,
) =>
    materialItems?.map((m) => getMaterialItemFirestoreData(m, true)).toList() ??
    [];
