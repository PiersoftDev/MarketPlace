import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialIndentRecord extends FirestoreRecord {
  MaterialIndentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "projectId" field.
  String? _projectId;
  String get projectId => _projectId ?? '';
  bool hasProjectId() => _projectId != null;

  // "activityId" field.
  String? _activityId;
  String get activityId => _activityId ?? '';
  bool hasActivityId() => _activityId != null;

  // "itemId" field.
  String? _itemId;
  String get itemId => _itemId ?? '';
  bool hasItemId() => _itemId != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "uom" field.
  String? _uom;
  String get uom => _uom ?? '';
  bool hasUom() => _uom != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "approvedBy" field.
  String? _approvedBy;
  String get approvedBy => _approvedBy ?? '';
  bool hasApprovedBy() => _approvedBy != null;

  // "approvedDateTime" field.
  DateTime? _approvedDateTime;
  DateTime? get approvedDateTime => _approvedDateTime;
  bool hasApprovedDateTime() => _approvedDateTime != null;

  // "expectedDate" field.
  String? _expectedDate;
  String get expectedDate => _expectedDate ?? '';
  bool hasExpectedDate() => _expectedDate != null;

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "projectName" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "activityName" field.
  String? _activityName;
  String get activityName => _activityName ?? '';
  bool hasActivityName() => _activityName != null;

  // "itemDesc" field.
  String? _itemDesc;
  String get itemDesc => _itemDesc ?? '';
  bool hasItemDesc() => _itemDesc != null;

  void _initializeFields() {
    _projectId = snapshotData['projectId'] as String?;
    _activityId = snapshotData['activityId'] as String?;
    _itemId = snapshotData['itemId'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _uom = snapshotData['uom'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _status = snapshotData['status'] as String?;
    _approvedBy = snapshotData['approvedBy'] as String?;
    _approvedDateTime = snapshotData['approvedDateTime'] as DateTime?;
    _expectedDate = snapshotData['expectedDate'] as String?;
    _orderId = snapshotData['orderId'] as String?;
    _projectName = snapshotData['projectName'] as String?;
    _activityName = snapshotData['activityName'] as String?;
    _itemDesc = snapshotData['itemDesc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('material_indent');

  static Stream<MaterialIndentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialIndentRecord.fromSnapshot(s));

  static Future<MaterialIndentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaterialIndentRecord.fromSnapshot(s));

  static MaterialIndentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialIndentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialIndentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialIndentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialIndentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialIndentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialIndentRecordData({
  String? projectId,
  String? activityId,
  String? itemId,
  int? quantity,
  String? uom,
  DateTime? createdDate,
  String? createdBy,
  String? status,
  String? approvedBy,
  DateTime? approvedDateTime,
  String? expectedDate,
  String? orderId,
  String? projectName,
  String? activityName,
  String? itemDesc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projectId': projectId,
      'activityId': activityId,
      'itemId': itemId,
      'quantity': quantity,
      'uom': uom,
      'createdDate': createdDate,
      'createdBy': createdBy,
      'status': status,
      'approvedBy': approvedBy,
      'approvedDateTime': approvedDateTime,
      'expectedDate': expectedDate,
      'orderId': orderId,
      'projectName': projectName,
      'activityName': activityName,
      'itemDesc': itemDesc,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialIndentRecordDocumentEquality
    implements Equality<MaterialIndentRecord> {
  const MaterialIndentRecordDocumentEquality();

  @override
  bool equals(MaterialIndentRecord? e1, MaterialIndentRecord? e2) {
    return e1?.projectId == e2?.projectId &&
        e1?.activityId == e2?.activityId &&
        e1?.itemId == e2?.itemId &&
        e1?.quantity == e2?.quantity &&
        e1?.uom == e2?.uom &&
        e1?.createdDate == e2?.createdDate &&
        e1?.createdBy == e2?.createdBy &&
        e1?.status == e2?.status &&
        e1?.approvedBy == e2?.approvedBy &&
        e1?.approvedDateTime == e2?.approvedDateTime &&
        e1?.expectedDate == e2?.expectedDate &&
        e1?.orderId == e2?.orderId &&
        e1?.projectName == e2?.projectName &&
        e1?.activityName == e2?.activityName &&
        e1?.itemDesc == e2?.itemDesc;
  }

  @override
  int hash(MaterialIndentRecord? e) => const ListEquality().hash([
        e?.projectId,
        e?.activityId,
        e?.itemId,
        e?.quantity,
        e?.uom,
        e?.createdDate,
        e?.createdBy,
        e?.status,
        e?.approvedBy,
        e?.approvedDateTime,
        e?.expectedDate,
        e?.orderId,
        e?.projectName,
        e?.activityName,
        e?.itemDesc
      ]);

  @override
  bool isValidKey(Object? o) => o is MaterialIndentRecord;
}
