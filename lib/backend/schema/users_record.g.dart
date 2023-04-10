// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experiencePoints;
    if (value != null) {
      result
        ..add('experience_points')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.coinsEarned;
    if (value != null) {
      result
        ..add('coins_earned')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.coin1;
    if (value != null) {
      result
        ..add('coin1')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.coin2;
    if (value != null) {
      result
        ..add('coin2')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.coin3;
    if (value != null) {
      result
        ..add('coin3')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.coin4;
    if (value != null) {
      result
        ..add('coin4')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'experience_points':
          result.experiencePoints = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'coins_earned':
          result.coinsEarned.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'coin1':
          result.coin1 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'coin2':
          result.coin2 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'coin3':
          result.coin3 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'coin4':
          result.coin4 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? name;
  @override
  final int? age;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final int? experiencePoints;
  @override
  final BuiltList<DocumentReference<Object?>>? coinsEarned;
  @override
  final bool? coin1;
  @override
  final bool? coin2;
  @override
  final bool? coin3;
  @override
  final bool? coin4;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.password,
      this.name,
      this.age,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.experiencePoints,
      this.coinsEarned,
      this.coin1,
      this.coin2,
      this.coin3,
      this.coin4,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        password == other.password &&
        name == other.name &&
        age == other.age &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        experiencePoints == other.experiencePoints &&
        coinsEarned == other.coinsEarned &&
        coin1 == other.coin1 &&
        coin2 == other.coin2 &&
        coin3 == other.coin3 &&
        coin4 == other.coin4 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, experiencePoints.hashCode);
    _$hash = $jc(_$hash, coinsEarned.hashCode);
    _$hash = $jc(_$hash, coin1.hashCode);
    _$hash = $jc(_$hash, coin2.hashCode);
    _$hash = $jc(_$hash, coin3.hashCode);
    _$hash = $jc(_$hash, coin4.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('password', password)
          ..add('name', name)
          ..add('age', age)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('experiencePoints', experiencePoints)
          ..add('coinsEarned', coinsEarned)
          ..add('coin1', coin1)
          ..add('coin2', coin2)
          ..add('coin3', coin3)
          ..add('coin4', coin4)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  int? _experiencePoints;
  int? get experiencePoints => _$this._experiencePoints;
  set experiencePoints(int? experiencePoints) =>
      _$this._experiencePoints = experiencePoints;

  ListBuilder<DocumentReference<Object?>>? _coinsEarned;
  ListBuilder<DocumentReference<Object?>> get coinsEarned =>
      _$this._coinsEarned ??= new ListBuilder<DocumentReference<Object?>>();
  set coinsEarned(ListBuilder<DocumentReference<Object?>>? coinsEarned) =>
      _$this._coinsEarned = coinsEarned;

  bool? _coin1;
  bool? get coin1 => _$this._coin1;
  set coin1(bool? coin1) => _$this._coin1 = coin1;

  bool? _coin2;
  bool? get coin2 => _$this._coin2;
  set coin2(bool? coin2) => _$this._coin2 = coin2;

  bool? _coin3;
  bool? get coin3 => _$this._coin3;
  set coin3(bool? coin3) => _$this._coin3 = coin3;

  bool? _coin4;
  bool? get coin4 => _$this._coin4;
  set coin4(bool? coin4) => _$this._coin4 = coin4;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _name = $v.name;
      _age = $v.age;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _experiencePoints = $v.experiencePoints;
      _coinsEarned = $v.coinsEarned?.toBuilder();
      _coin1 = $v.coin1;
      _coin2 = $v.coin2;
      _coin3 = $v.coin3;
      _coin4 = $v.coin4;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              password: password,
              name: name,
              age: age,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              experiencePoints: experiencePoints,
              coinsEarned: _coinsEarned?.build(),
              coin1: coin1,
              coin2: coin2,
              coin3: coin3,
              coin4: coin4,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coinsEarned';
        _coinsEarned?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
