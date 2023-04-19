// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_item_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MaterialItemStruct> _$materialItemStructSerializer =
    new _$MaterialItemStructSerializer();

class _$MaterialItemStructSerializer
    implements StructuredSerializer<MaterialItemStruct> {
  @override
  final Iterable<Type> types = const [MaterialItemStruct, _$MaterialItemStruct];
  @override
  final String wireName = 'MaterialItemStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MaterialItemStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.uom;
    if (value != null) {
      result
        ..add('uom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MaterialItemStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MaterialItemStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uom':
          result.uom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$MaterialItemStruct extends MaterialItemStruct {
  @override
  final String? id;
  @override
  final double? quantity;
  @override
  final String? uom;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$MaterialItemStruct(
          [void Function(MaterialItemStructBuilder)? updates]) =>
      (new MaterialItemStructBuilder()..update(updates))._build();

  _$MaterialItemStruct._(
      {this.id, this.quantity, this.uom, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'MaterialItemStruct', 'firestoreUtilData');
  }

  @override
  MaterialItemStruct rebuild(
          void Function(MaterialItemStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaterialItemStructBuilder toBuilder() =>
      new MaterialItemStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaterialItemStruct &&
        id == other.id &&
        quantity == other.quantity &&
        uom == other.uom &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, uom.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaterialItemStruct')
          ..add('id', id)
          ..add('quantity', quantity)
          ..add('uom', uom)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class MaterialItemStructBuilder
    implements Builder<MaterialItemStruct, MaterialItemStructBuilder> {
  _$MaterialItemStruct? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  String? _uom;
  String? get uom => _$this._uom;
  set uom(String? uom) => _$this._uom = uom;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  MaterialItemStructBuilder() {
    MaterialItemStruct._initializeBuilder(this);
  }

  MaterialItemStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _quantity = $v.quantity;
      _uom = $v.uom;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaterialItemStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaterialItemStruct;
  }

  @override
  void update(void Function(MaterialItemStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaterialItemStruct build() => _build();

  _$MaterialItemStruct _build() {
    final _$result = _$v ??
        new _$MaterialItemStruct._(
            id: id,
            quantity: quantity,
            uom: uom,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'MaterialItemStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
