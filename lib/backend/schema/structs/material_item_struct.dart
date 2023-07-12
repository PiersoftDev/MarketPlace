// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialItemStruct extends FFFirebaseStruct {
  MaterialItemStruct({
    String? id,
    double? quantity,
    String? uom,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _quantity = quantity,
        _uom = uom,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  set quantity(double? val) => _quantity = val;
  void incrementQuantity(double amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "uom" field.
  String? _uom;
  String get uom => _uom ?? '';
  set uom(String? val) => _uom = val;
  bool hasUom() => _uom != null;

  static MaterialItemStruct fromMap(Map<String, dynamic> data) =>
      MaterialItemStruct(
        id: data['id'] as String?,
        quantity: castToType<double>(data['quantity']),
        uom: data['uom'] as String?,
      );

  static MaterialItemStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MaterialItemStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'quantity': _quantity,
        'uom': _uom,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.double,
        ),
        'uom': serializeParam(
          _uom,
          ParamType.String,
        ),
      }.withoutNulls;

  static MaterialItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      MaterialItemStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.double,
          false,
        ),
        uom: deserializeParam(
          data['uom'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MaterialItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MaterialItemStruct &&
        id == other.id &&
        quantity == other.quantity &&
        uom == other.uom;
  }

  @override
  int get hashCode => const ListEquality().hash([id, quantity, uom]);
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
      id: id,
      quantity: quantity,
      uom: uom,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MaterialItemStruct? updateMaterialItemStruct(
  MaterialItemStruct? materialItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    materialItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

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
}

Map<String, dynamic> getMaterialItemFirestoreData(
  MaterialItemStruct? materialItem, [
  bool forFieldValue = false,
]) {
  if (materialItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(materialItem.toMap());

  // Add any Firestore field values
  materialItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMaterialItemListFirestoreData(
  List<MaterialItemStruct>? materialItems,
) =>
    materialItems?.map((e) => getMaterialItemFirestoreData(e, true)).toList() ??
    [];
