// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mp_projects_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MpProjectsRecord> _$mpProjectsRecordSerializer =
    new _$MpProjectsRecordSerializer();

class _$MpProjectsRecordSerializer
    implements StructuredSerializer<MpProjectsRecord> {
  @override
  final Iterable<Type> types = const [MpProjectsRecord, _$MpProjectsRecord];
  @override
  final String wireName = 'MpProjectsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MpProjectsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('Id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('Desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.companyId;
    if (value != null) {
      result
        ..add('CompanyId')
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
  MpProjectsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MpProjectsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CompanyId':
          result.companyId = serializers.deserialize(value,
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

class _$MpProjectsRecord extends MpProjectsRecord {
  @override
  final String? id;
  @override
  final String? desc;
  @override
  final String? companyId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MpProjectsRecord(
          [void Function(MpProjectsRecordBuilder)? updates]) =>
      (new MpProjectsRecordBuilder()..update(updates))._build();

  _$MpProjectsRecord._({this.id, this.desc, this.companyId, this.ffRef})
      : super._();

  @override
  MpProjectsRecord rebuild(void Function(MpProjectsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MpProjectsRecordBuilder toBuilder() =>
      new MpProjectsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MpProjectsRecord &&
        id == other.id &&
        desc == other.desc &&
        companyId == other.companyId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MpProjectsRecord')
          ..add('id', id)
          ..add('desc', desc)
          ..add('companyId', companyId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MpProjectsRecordBuilder
    implements Builder<MpProjectsRecord, MpProjectsRecordBuilder> {
  _$MpProjectsRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MpProjectsRecordBuilder() {
    MpProjectsRecord._initializeBuilder(this);
  }

  MpProjectsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _desc = $v.desc;
      _companyId = $v.companyId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MpProjectsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MpProjectsRecord;
  }

  @override
  void update(void Function(MpProjectsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MpProjectsRecord build() => _build();

  _$MpProjectsRecord _build() {
    final _$result = _$v ??
        new _$MpProjectsRecord._(
            id: id, desc: desc, companyId: companyId, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
