import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mp_projects_record.g.dart';

abstract class MpProjectsRecord
    implements Built<MpProjectsRecord, MpProjectsRecordBuilder> {
  static Serializer<MpProjectsRecord> get serializer =>
      _$mpProjectsRecordSerializer;

  @BuiltValueField(wireName: 'Id')
  String? get id;

  @BuiltValueField(wireName: 'Desc')
  String? get desc;

  @BuiltValueField(wireName: 'CompanyId')
  String? get companyId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MpProjectsRecordBuilder builder) => builder
    ..id = ''
    ..desc = ''
    ..companyId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mp-projects');

  static Stream<MpProjectsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MpProjectsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static MpProjectsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      MpProjectsRecord(
        (c) => c
          ..id = snapshot.data['Id']
          ..desc = snapshot.data['Desc']
          ..companyId = snapshot.data['CompanyId']
          ..ffRef = MpProjectsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<MpProjectsRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'mp-projects',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  MpProjectsRecord._();
  factory MpProjectsRecord([void Function(MpProjectsRecordBuilder) updates]) =
      _$MpProjectsRecord;

  static MpProjectsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMpProjectsRecordData({
  String? id,
  String? desc,
  String? companyId,
}) {
  final firestoreData = serializers.toFirestore(
    MpProjectsRecord.serializer,
    MpProjectsRecord(
      (m) => m
        ..id = id
        ..desc = desc
        ..companyId = companyId,
    ),
  );

  return firestoreData;
}
