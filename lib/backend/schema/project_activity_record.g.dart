// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_activity_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectActivityRecord> _$projectActivityRecordSerializer =
    new _$ProjectActivityRecordSerializer();

class _$ProjectActivityRecordSerializer
    implements StructuredSerializer<ProjectActivityRecord> {
  @override
  final Iterable<Type> types = const [
    ProjectActivityRecord,
    _$ProjectActivityRecord
  ];
  @override
  final String wireName = 'ProjectActivityRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProjectActivityRecord object,
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
    value = object.projectId;
    if (value != null) {
      result
        ..add('ProjectId')
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
  ProjectActivityRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectActivityRecordBuilder();

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
        case 'ProjectId':
          result.projectId = serializers.deserialize(value,
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

class _$ProjectActivityRecord extends ProjectActivityRecord {
  @override
  final String? id;
  @override
  final String? desc;
  @override
  final String? projectId;
  @override
  final String? companyId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProjectActivityRecord(
          [void Function(ProjectActivityRecordBuilder)? updates]) =>
      (new ProjectActivityRecordBuilder()..update(updates))._build();

  _$ProjectActivityRecord._(
      {this.id, this.desc, this.projectId, this.companyId, this.ffRef})
      : super._();

  @override
  ProjectActivityRecord rebuild(
          void Function(ProjectActivityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectActivityRecordBuilder toBuilder() =>
      new ProjectActivityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectActivityRecord &&
        id == other.id &&
        desc == other.desc &&
        projectId == other.projectId &&
        companyId == other.companyId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, companyId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectActivityRecord')
          ..add('id', id)
          ..add('desc', desc)
          ..add('projectId', projectId)
          ..add('companyId', companyId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProjectActivityRecordBuilder
    implements Builder<ProjectActivityRecord, ProjectActivityRecordBuilder> {
  _$ProjectActivityRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _companyId;
  String? get companyId => _$this._companyId;
  set companyId(String? companyId) => _$this._companyId = companyId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProjectActivityRecordBuilder() {
    ProjectActivityRecord._initializeBuilder(this);
  }

  ProjectActivityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _desc = $v.desc;
      _projectId = $v.projectId;
      _companyId = $v.companyId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectActivityRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectActivityRecord;
  }

  @override
  void update(void Function(ProjectActivityRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectActivityRecord build() => _build();

  _$ProjectActivityRecord _build() {
    final _$result = _$v ??
        new _$ProjectActivityRecord._(
            id: id,
            desc: desc,
            projectId: projectId,
            companyId: companyId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
