// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapsRecord> _$mapsRecordSerializer = new _$MapsRecordSerializer();

class _$MapsRecordSerializer implements StructuredSerializer<MapsRecord> {
  @override
  final Iterable<Type> types = const [MapsRecord, _$MapsRecord];
  @override
  final String wireName = 'MapsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MapsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.distance;
    if (value != null) {
      result
        ..add('distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.altitude;
    if (value != null) {
      result
        ..add('altitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.visited;
    if (value != null) {
      result
        ..add('visited')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.difficulty;
    if (value != null) {
      result
        ..add('difficulty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
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
  MapsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'altitude':
          result.altitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'visited':
          result.visited = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'difficulty':
          result.difficulty = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
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

class _$MapsRecord extends MapsRecord {
  @override
  final String? name;
  @override
  final double? distance;
  @override
  final double? altitude;
  @override
  final bool? visited;
  @override
  final String? duration;
  @override
  final String? difficulty;
  @override
  final String? picture;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MapsRecord([void Function(MapsRecordBuilder)? updates]) =>
      (new MapsRecordBuilder()..update(updates))._build();

  _$MapsRecord._(
      {this.name,
      this.distance,
      this.altitude,
      this.visited,
      this.duration,
      this.difficulty,
      this.picture,
      this.ffRef})
      : super._();

  @override
  MapsRecord rebuild(void Function(MapsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapsRecordBuilder toBuilder() => new MapsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapsRecord &&
        name == other.name &&
        distance == other.distance &&
        altitude == other.altitude &&
        visited == other.visited &&
        duration == other.duration &&
        difficulty == other.difficulty &&
        picture == other.picture &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), distance.hashCode),
                            altitude.hashCode),
                        visited.hashCode),
                    duration.hashCode),
                difficulty.hashCode),
            picture.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapsRecord')
          ..add('name', name)
          ..add('distance', distance)
          ..add('altitude', altitude)
          ..add('visited', visited)
          ..add('duration', duration)
          ..add('difficulty', difficulty)
          ..add('picture', picture)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MapsRecordBuilder implements Builder<MapsRecord, MapsRecordBuilder> {
  _$MapsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _distance;
  double? get distance => _$this._distance;
  set distance(double? distance) => _$this._distance = distance;

  double? _altitude;
  double? get altitude => _$this._altitude;
  set altitude(double? altitude) => _$this._altitude = altitude;

  bool? _visited;
  bool? get visited => _$this._visited;
  set visited(bool? visited) => _$this._visited = visited;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _difficulty;
  String? get difficulty => _$this._difficulty;
  set difficulty(String? difficulty) => _$this._difficulty = difficulty;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MapsRecordBuilder() {
    MapsRecord._initializeBuilder(this);
  }

  MapsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _distance = $v.distance;
      _altitude = $v.altitude;
      _visited = $v.visited;
      _duration = $v.duration;
      _difficulty = $v.difficulty;
      _picture = $v.picture;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapsRecord;
  }

  @override
  void update(void Function(MapsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapsRecord build() => _build();

  _$MapsRecord _build() {
    final _$result = _$v ??
        new _$MapsRecord._(
            name: name,
            distance: distance,
            altitude: altitude,
            visited: visited,
            duration: duration,
            difficulty: difficulty,
            picture: picture,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
