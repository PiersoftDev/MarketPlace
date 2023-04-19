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

  BuiltList<MaterialItemStruct>? get items;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MaterialIndentRecordBuilder builder) => builder
    ..projectId = ''
    ..activityId = ''
    ..items = ListBuilder();

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
}) {
  final firestoreData = serializers.toFirestore(
    MaterialIndentRecord.serializer,
    MaterialIndentRecord(
      (m) => m
        ..projectId = projectId
        ..activityId = activityId
        ..items = null,
    ),
  );

  return firestoreData;
}
