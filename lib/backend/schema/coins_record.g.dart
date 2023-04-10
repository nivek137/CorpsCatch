// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoinsRecord> _$coinsRecordSerializer = new _$CoinsRecordSerializer();

class _$CoinsRecordSerializer implements StructuredSerializer<CoinsRecord> {
  @override
  final Iterable<Type> types = const [CoinsRecord, _$CoinsRecord];
  @override
  final String wireName = 'CoinsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoinsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.trailId;
    if (value != null) {
      result
        ..add('trail_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.coinPic;
    if (value != null) {
      result
        ..add('coin_pic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detail;
    if (value != null) {
      result
        ..add('detail')
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
  CoinsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoinsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'trail_id':
          result.trailId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'coin_pic':
          result.coinPic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detail':
          result.detail = serializers.deserialize(value,
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

class _$CoinsRecord extends CoinsRecord {
  @override
  final int? id;
  @override
  final int? trailId;
  @override
  final String? coinPic;
  @override
  final String? detail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CoinsRecord([void Function(CoinsRecordBuilder)? updates]) =>
      (new CoinsRecordBuilder()..update(updates))._build();

  _$CoinsRecord._(
      {this.id, this.trailId, this.coinPic, this.detail, this.ffRef})
      : super._();

  @override
  CoinsRecord rebuild(void Function(CoinsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoinsRecordBuilder toBuilder() => new CoinsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoinsRecord &&
        id == other.id &&
        trailId == other.trailId &&
        coinPic == other.coinPic &&
        detail == other.detail &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, trailId.hashCode);
    _$hash = $jc(_$hash, coinPic.hashCode);
    _$hash = $jc(_$hash, detail.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoinsRecord')
          ..add('id', id)
          ..add('trailId', trailId)
          ..add('coinPic', coinPic)
          ..add('detail', detail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CoinsRecordBuilder implements Builder<CoinsRecord, CoinsRecordBuilder> {
  _$CoinsRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _trailId;
  int? get trailId => _$this._trailId;
  set trailId(int? trailId) => _$this._trailId = trailId;

  String? _coinPic;
  String? get coinPic => _$this._coinPic;
  set coinPic(String? coinPic) => _$this._coinPic = coinPic;

  String? _detail;
  String? get detail => _$this._detail;
  set detail(String? detail) => _$this._detail = detail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CoinsRecordBuilder() {
    CoinsRecord._initializeBuilder(this);
  }

  CoinsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _trailId = $v.trailId;
      _coinPic = $v.coinPic;
      _detail = $v.detail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoinsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoinsRecord;
  }

  @override
  void update(void Function(CoinsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoinsRecord build() => _build();

  _$CoinsRecord _build() {
    final _$result = _$v ??
        new _$CoinsRecord._(
            id: id,
            trailId: trailId,
            coinPic: coinPic,
            detail: detail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
