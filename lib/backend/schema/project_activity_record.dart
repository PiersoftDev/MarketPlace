import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectActivityRecord extends FirestoreRecord {
  ProjectActivityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "Desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "ProjectId" field.
  String? _projectId;
  String get projectId => _projectId ?? '';
  bool hasProjectId() => _projectId != null;

  // "CompanyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  void _initializeFields() {
    _id = snapshotData['Id'] as String?;
    _desc = snapshotData['Desc'] as String?;
    _projectId = snapshotData['ProjectId'] as String?;
    _companyId = snapshotData['CompanyId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('project-activity');

  static Stream<ProjectActivityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectActivityRecord.fromSnapshot(s));

  static Future<ProjectActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectActivityRecord.fromSnapshot(s));

  static ProjectActivityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectActivityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectActivityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectActivityRecord._(reference, mapFromFirestore(data));

  static ProjectActivityRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ProjectActivityRecord.getDocumentFromData(
        {
          'Id': snapshot.data['Id'],
          'Desc': snapshot.data['Desc'],
          'ProjectId': snapshot.data['ProjectId'],
          'CompanyId': snapshot.data['CompanyId'],
        },
        ProjectActivityRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ProjectActivityRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'project-activity',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ProjectActivityRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createProjectActivityRecordData({
  String? id,
  String? desc,
  String? projectId,
  String? companyId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'Desc': desc,
      'ProjectId': projectId,
      'CompanyId': companyId,
    }.withoutNulls,
  );

  return firestoreData;
}
