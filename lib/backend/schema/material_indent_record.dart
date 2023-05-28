import 'dart:async';

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
    _quantity = snapshotData['quantity'] as int?;
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
