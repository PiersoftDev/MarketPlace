import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'project_activity_record.g.dart';

abstract class ProjectActivityRecord
    implements Built<ProjectActivityRecord, ProjectActivityRecordBuilder> {
  static Serializer<ProjectActivityRecord> get serializer =>
      _$projectActivityRecordSerializer;

  @BuiltValueField(wireName: 'Id')
  String? get id;

  @BuiltValueField(wireName: 'Desc')
  String? get desc;

  @BuiltValueField(wireName: 'ProjectId')
  String? get projectId;

  @BuiltValueField(wireName: 'CompanyId')
  String? get companyId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProjectActivityRecordBuilder builder) =>
      builder
        ..id = ''
        ..desc = ''
        ..projectId = ''
        ..companyId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('project-activity');

  static Stream<ProjectActivityRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProjectActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static ProjectActivityRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ProjectActivityRecord(
        (c) => c
          ..id = snapshot.data['Id']
          ..desc = snapshot.data['Desc']
          ..projectId = snapshot.data['ProjectId']
          ..companyId = snapshot.data['CompanyId']
          ..ffRef = ProjectActivityRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ProjectActivityRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'project-activity',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  ProjectActivityRecord._();
  factory ProjectActivityRecord(
          [void Function(ProjectActivityRecordBuilder) updates]) =
      _$ProjectActivityRecord;

  static ProjectActivityRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProjectActivityRecordData({
  String? id,
  String? desc,
  String? projectId,
  String? companyId,
}) {
  final firestoreData = serializers.toFirestore(
    ProjectActivityRecord.serializer,
    ProjectActivityRecord(
      (p) => p
        ..id = id
        ..desc = desc
        ..projectId = projectId
        ..companyId = companyId,
    ),
  );

  return firestoreData;
}
