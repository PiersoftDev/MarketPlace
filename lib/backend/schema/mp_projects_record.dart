import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MpProjectsRecord extends FirestoreRecord {
  MpProjectsRecord._(
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

  // "CompanyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  void _initializeFields() {
    _id = snapshotData['Id'] as String?;
    _desc = snapshotData['Desc'] as String?;
    _companyId = snapshotData['CompanyId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mp-projects');

  static Stream<MpProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MpProjectsRecord.fromSnapshot(s));

  static Future<MpProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MpProjectsRecord.fromSnapshot(s));

  static MpProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MpProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MpProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MpProjectsRecord._(reference, mapFromFirestore(data));

  static MpProjectsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      MpProjectsRecord.getDocumentFromData(
        {
          'Id': snapshot.data['Id'],
          'Desc': snapshot.data['Desc'],
          'CompanyId': snapshot.data['CompanyId'],
        },
        MpProjectsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<MpProjectsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'mp-projects',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'MpProjectsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createMpProjectsRecordData({
  String? id,
  String? desc,
  String? companyId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'Desc': desc,
      'CompanyId': companyId,
    }.withoutNulls,
  );

  return firestoreData;
}
