import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'material_indent_record.g.dart';

abstract class MaterialIndentRecord
    implements Built<MaterialIndentRecord, MaterialIndentRecordBuilder> {
  static Serializer<MaterialIndentRecord> get serializer =>
      _$materialIndentRecordSerializer;

  String? get projectId;

  String? get activityId;

  String? get itemId;

  int? get quantity;

  String? get uom;

  DateTime? get createdDate;

  String? get createdBy;

  String? get status;

  String? get approvedBy;

  DateTime? get approvedDateTime;

  String? get expectedDate;

  String? get orderId;

  String? get projectName;

  String? get activityName;

  String? get itemDesc;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MaterialIndentRecordBuilder builder) => builder
    ..projectId = ''
    ..activityId = ''
    ..itemId = ''
    ..quantity = 0
    ..uom = ''
    ..createdBy = ''
    ..status = ''
    ..approvedBy = ''
    ..expectedDate = ''
    ..orderId = ''
    ..projectName = ''
    ..activityName = ''
    ..itemDesc = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('material_indent');

  static Stream<MaterialIndentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MaterialIndentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MaterialIndentRecord._();
  factory MaterialIndentRecord(
          [void Function(MaterialIndentRecordBuilder) updates]) =
      _$MaterialIndentRecord;

  static MaterialIndentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    MaterialIndentRecord.serializer,
    MaterialIndentRecord(
      (m) => m
        ..projectId = projectId
        ..activityId = activityId
        ..itemId = itemId
        ..quantity = quantity
        ..uom = uom
        ..createdDate = createdDate
        ..createdBy = createdBy
        ..status = status
        ..approvedBy = approvedBy
        ..approvedDateTime = approvedDateTime
        ..expectedDate = expectedDate
        ..orderId = orderId
        ..projectName = projectName
        ..activityName = activityName
        ..itemDesc = itemDesc,
    ),
  );

  return firestoreData;
}
