// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_indent_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MaterialIndentRecord> _$materialIndentRecordSerializer =
    new _$MaterialIndentRecordSerializer();

class _$MaterialIndentRecordSerializer
    implements StructuredSerializer<MaterialIndentRecord> {
  @override
  final Iterable<Type> types = const [
    MaterialIndentRecord,
    _$MaterialIndentRecord
  ];
  @override
  final String wireName = 'MaterialIndentRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MaterialIndentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.projectId;
    if (value != null) {
      result
        ..add('projectId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activityId;
    if (value != null) {
      result
        ..add('activityId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemId;
    if (value != null) {
      result
        ..add('itemId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uom;
    if (value != null) {
      result
        ..add('uom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.approvedBy;
    if (value != null) {
      result
        ..add('approvedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.approvedDateTime;
    if (value != null) {
      result
        ..add('approvedDateTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.expectedDate;
    if (value != null) {
      result
        ..add('expectedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderId;
    if (value != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectName;
    if (value != null) {
      result
        ..add('projectName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activityName;
    if (value != null) {
      result
        ..add('activityName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemDesc;
    if (value != null) {
      result
        ..add('itemDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MaterialIndentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MaterialIndentRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'projectId':
          result.projectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'activityId':
          result.activityId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'itemId':
          result.itemId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'uom':
          result.uom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'approvedBy':
          result.approvedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'approvedDateTime':
          result.approvedDateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'expectedDate':
          result.expectedDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'projectName':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'activityName':
          result.activityName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'itemDesc':
          result.itemDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MaterialIndentRecord extends MaterialIndentRecord {
  @override
  final String? projectId;
  @override
  final String? activityId;
  @override
  final String? itemId;
  @override
  final int? quantity;
  @override
  final String? uom;
  @override
  final DateTime? createdDate;
  @override
  final String? createdBy;
  @override
  final String? status;
  @override
  final String? approvedBy;
  @override
  final DateTime? approvedDateTime;
  @override
  final String? expectedDate;
  @override
  final String? orderId;
  @override
  final String? projectName;
  @override
  final String? activityName;
  @override
  final String? itemDesc;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MaterialIndentRecord(
          [void Function(MaterialIndentRecordBuilder)? updates]) =>
      (new MaterialIndentRecordBuilder()..update(updates))._build();

  _$MaterialIndentRecord._(
      {this.projectId,
      this.activityId,
      this.itemId,
      this.quantity,
      this.uom,
      this.createdDate,
      this.createdBy,
      this.status,
      this.approvedBy,
      this.approvedDateTime,
      this.expectedDate,
      this.orderId,
      this.projectName,
      this.activityName,
      this.itemDesc,
      this.ffRef})
      : super._();

  @override
  MaterialIndentRecord rebuild(
          void Function(MaterialIndentRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaterialIndentRecordBuilder toBuilder() =>
      new MaterialIndentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaterialIndentRecord &&
        projectId == other.projectId &&
        activityId == other.activityId &&
        itemId == other.itemId &&
        quantity == other.quantity &&
        uom == other.uom &&
        createdDate == other.createdDate &&
        createdBy == other.createdBy &&
        status == other.status &&
        approvedBy == other.approvedBy &&
        approvedDateTime == other.approvedDateTime &&
        expectedDate == other.expectedDate &&
        orderId == other.orderId &&
        projectName == other.projectName &&
        activityName == other.activityName &&
        itemDesc == other.itemDesc &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, activityId.hashCode);
    _$hash = $jc(_$hash, itemId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, uom.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, approvedBy.hashCode);
    _$hash = $jc(_$hash, approvedDateTime.hashCode);
    _$hash = $jc(_$hash, expectedDate.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, projectName.hashCode);
    _$hash = $jc(_$hash, activityName.hashCode);
    _$hash = $jc(_$hash, itemDesc.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaterialIndentRecord')
          ..add('projectId', projectId)
          ..add('activityId', activityId)
          ..add('itemId', itemId)
          ..add('quantity', quantity)
          ..add('uom', uom)
          ..add('createdDate', createdDate)
          ..add('createdBy', createdBy)
          ..add('status', status)
          ..add('approvedBy', approvedBy)
          ..add('approvedDateTime', approvedDateTime)
          ..add('expectedDate', expectedDate)
          ..add('orderId', orderId)
          ..add('projectName', projectName)
          ..add('activityName', activityName)
          ..add('itemDesc', itemDesc)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MaterialIndentRecordBuilder
    implements Builder<MaterialIndentRecord, MaterialIndentRecordBuilder> {
  _$MaterialIndentRecord? _$v;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _activityId;
  String? get activityId => _$this._activityId;
  set activityId(String? activityId) => _$this._activityId = activityId;

  String? _itemId;
  String? get itemId => _$this._itemId;
  set itemId(String? itemId) => _$this._itemId = itemId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _uom;
  String? get uom => _$this._uom;
  set uom(String? uom) => _$this._uom = uom;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _approvedBy;
  String? get approvedBy => _$this._approvedBy;
  set approvedBy(String? approvedBy) => _$this._approvedBy = approvedBy;

  DateTime? _approvedDateTime;
  DateTime? get approvedDateTime => _$this._approvedDateTime;
  set approvedDateTime(DateTime? approvedDateTime) =>
      _$this._approvedDateTime = approvedDateTime;

  String? _expectedDate;
  String? get expectedDate => _$this._expectedDate;
  set expectedDate(String? expectedDate) => _$this._expectedDate = expectedDate;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  String? _activityName;
  String? get activityName => _$this._activityName;
  set activityName(String? activityName) => _$this._activityName = activityName;

  String? _itemDesc;
  String? get itemDesc => _$this._itemDesc;
  set itemDesc(String? itemDesc) => _$this._itemDesc = itemDesc;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MaterialIndentRecordBuilder() {
    MaterialIndentRecord._initializeBuilder(this);
  }

  MaterialIndentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _activityId = $v.activityId;
      _itemId = $v.itemId;
      _quantity = $v.quantity;
      _uom = $v.uom;
      _createdDate = $v.createdDate;
      _createdBy = $v.createdBy;
      _status = $v.status;
      _approvedBy = $v.approvedBy;
      _approvedDateTime = $v.approvedDateTime;
      _expectedDate = $v.expectedDate;
      _orderId = $v.orderId;
      _projectName = $v.projectName;
      _activityName = $v.activityName;
      _itemDesc = $v.itemDesc;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaterialIndentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaterialIndentRecord;
  }

  @override
  void update(void Function(MaterialIndentRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaterialIndentRecord build() => _build();

  _$MaterialIndentRecord _build() {
    final _$result = _$v ??
        new _$MaterialIndentRecord._(
            projectId: projectId,
            activityId: activityId,
            itemId: itemId,
            quantity: quantity,
            uom: uom,
            createdDate: createdDate,
            createdBy: createdBy,
            status: status,
            approvedBy: approvedBy,
            approvedDateTime: approvedDateTime,
            expectedDate: expectedDate,
            orderId: orderId,
            projectName: projectName,
            activityName: activityName,
            itemDesc: itemDesc,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
