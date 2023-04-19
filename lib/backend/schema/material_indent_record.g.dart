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
    value = object.items;
    if (value != null) {
      result
        ..add('items')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MaterialItemStruct)])));
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
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MaterialItemStruct)]))!
              as BuiltList<Object?>);
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
  final BuiltList<MaterialItemStruct>? items;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MaterialIndentRecord(
          [void Function(MaterialIndentRecordBuilder)? updates]) =>
      (new MaterialIndentRecordBuilder()..update(updates))._build();

  _$MaterialIndentRecord._(
      {this.projectId, this.activityId, this.items, this.ffRef})
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
        items == other.items &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, activityId.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaterialIndentRecord')
          ..add('projectId', projectId)
          ..add('activityId', activityId)
          ..add('items', items)
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

  ListBuilder<MaterialItemStruct>? _items;
  ListBuilder<MaterialItemStruct> get items =>
      _$this._items ??= new ListBuilder<MaterialItemStruct>();
  set items(ListBuilder<MaterialItemStruct>? items) => _$this._items = items;

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
      _items = $v.items?.toBuilder();
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
    _$MaterialIndentRecord _$result;
    try {
      _$result = _$v ??
          new _$MaterialIndentRecord._(
              projectId: projectId,
              activityId: activityId,
              items: _items?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MaterialIndentRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
