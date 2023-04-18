import 'dart:async';

import 'package:from_css_color/from_css_color.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'items_record.g.dart';

abstract class ItemsRecord implements Built<ItemsRecord, ItemsRecordBuilder> {
  static Serializer<ItemsRecord> get serializer => _$itemsRecordSerializer;

  @BuiltValueField(wireName: 'Id')
  String? get id;

  @BuiltValueField(wireName: 'Desc')
  String? get desc;

  @BuiltValueField(wireName: 'GroupId')
  String? get groupId;

  @BuiltValueField(wireName: 'CompanyId')
  String? get companyId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ItemsRecordBuilder builder) => builder
    ..id = ''
    ..desc = ''
    ..groupId = ''
    ..companyId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static ItemsRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => ItemsRecord(
        (c) => c
          ..id = snapshot.data['Id']
          ..desc = snapshot.data['Desc']
          ..groupId = snapshot.data['GroupId']
          ..companyId = snapshot.data['CompanyId']
          ..ffRef = ItemsRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ItemsRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'items',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  ItemsRecord._();
  factory ItemsRecord([void Function(ItemsRecordBuilder) updates]) =
      _$ItemsRecord;

  static ItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createItemsRecordData({
  String? id,
  String? desc,
  String? groupId,
  String? companyId,
}) {
  final firestoreData = serializers.toFirestore(
    ItemsRecord.serializer,
    ItemsRecord(
      (i) => i
        ..id = id
        ..desc = desc
        ..groupId = groupId
        ..companyId = companyId,
    ),
  );

  return firestoreData;
}
