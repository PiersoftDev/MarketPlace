import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemsRecord extends FirestoreRecord {
  ItemsRecord._(
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

  // "GroupId" field.
  String? _groupId;
  String get groupId => _groupId ?? '';
  bool hasGroupId() => _groupId != null;

  // "CompanyId" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  bool hasCompanyId() => _companyId != null;

  void _initializeFields() {
    _id = snapshotData['Id'] as String?;
    _desc = snapshotData['Desc'] as String?;
    _groupId = snapshotData['GroupId'] as String?;
    _companyId = snapshotData['CompanyId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItemsRecord.fromSnapshot(s));

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItemsRecord.fromSnapshot(s));

  static ItemsRecord fromSnapshot(DocumentSnapshot snapshot) => ItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItemsRecord._(reference, mapFromFirestore(data));

  static ItemsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ItemsRecord.getDocumentFromData(
        {
          'Id': snapshot.data['Id'],
          'Desc': snapshot.data['Desc'],
          'GroupId': snapshot.data['GroupId'],
          'CompanyId': snapshot.data['CompanyId'],
        },
        ItemsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ItemsRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'items',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItemsRecordData({
  String? id,
  String? desc,
  String? groupId,
  String? companyId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'Desc': desc,
      'GroupId': groupId,
      'CompanyId': companyId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItemsRecordDocumentEquality implements Equality<ItemsRecord> {
  const ItemsRecordDocumentEquality();

  @override
  bool equals(ItemsRecord? e1, ItemsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.desc == e2?.desc &&
        e1?.groupId == e2?.groupId &&
        e1?.companyId == e2?.companyId;
  }

  @override
  int hash(ItemsRecord? e) =>
      const ListEquality().hash([e?.id, e?.desc, e?.groupId, e?.companyId]);

  @override
  bool isValidKey(Object? o) => o is ItemsRecord;
}
