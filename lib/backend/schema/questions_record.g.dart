// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionsRecord> _$questionsRecordSerializer =
    new _$QuestionsRecordSerializer();

class _$QuestionsRecordSerializer
    implements StructuredSerializer<QuestionsRecord> {
  @override
  final Iterable<Type> types = const [QuestionsRecord, _$QuestionsRecord];
  @override
  final String wireName = 'QuestionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuestionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.trailId;
    if (value != null) {
      result
        ..add('trail_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.question;
    if (value != null) {
      result
        ..add('question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.correctAnswer;
    if (value != null) {
      result
        ..add('correctAnswer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.incorrectAnswer1;
    if (value != null) {
      result
        ..add('IncorrectAnswer1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.incorrectAnswer2;
    if (value != null) {
      result
        ..add('IncorrectAnswer2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.incorrectAnswer3;
    if (value != null) {
      result
        ..add('IncorrectAnswer3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.incorrectAnswer4;
    if (value != null) {
      result
        ..add('IncorrectAnswer4')
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
  QuestionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'trail_id':
          result.trailId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'correctAnswer':
          result.correctAnswer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IncorrectAnswer1':
          result.incorrectAnswer1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IncorrectAnswer2':
          result.incorrectAnswer2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IncorrectAnswer3':
          result.incorrectAnswer3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IncorrectAnswer4':
          result.incorrectAnswer4 = serializers.deserialize(value,
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

class _$QuestionsRecord extends QuestionsRecord {
  @override
  final int? trailId;
  @override
  final String? question;
  @override
  final String? correctAnswer;
  @override
  final String? incorrectAnswer1;
  @override
  final String? incorrectAnswer2;
  @override
  final String? incorrectAnswer3;
  @override
  final String? incorrectAnswer4;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QuestionsRecord([void Function(QuestionsRecordBuilder)? updates]) =>
      (new QuestionsRecordBuilder()..update(updates))._build();

  _$QuestionsRecord._(
      {this.trailId,
      this.question,
      this.correctAnswer,
      this.incorrectAnswer1,
      this.incorrectAnswer2,
      this.incorrectAnswer3,
      this.incorrectAnswer4,
      this.ffRef})
      : super._();

  @override
  QuestionsRecord rebuild(void Function(QuestionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionsRecordBuilder toBuilder() =>
      new QuestionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionsRecord &&
        trailId == other.trailId &&
        question == other.question &&
        correctAnswer == other.correctAnswer &&
        incorrectAnswer1 == other.incorrectAnswer1 &&
        incorrectAnswer2 == other.incorrectAnswer2 &&
        incorrectAnswer3 == other.incorrectAnswer3 &&
        incorrectAnswer4 == other.incorrectAnswer4 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, trailId.hashCode), question.hashCode),
                            correctAnswer.hashCode),
                        incorrectAnswer1.hashCode),
                    incorrectAnswer2.hashCode),
                incorrectAnswer3.hashCode),
            incorrectAnswer4.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionsRecord')
          ..add('trailId', trailId)
          ..add('question', question)
          ..add('correctAnswer', correctAnswer)
          ..add('incorrectAnswer1', incorrectAnswer1)
          ..add('incorrectAnswer2', incorrectAnswer2)
          ..add('incorrectAnswer3', incorrectAnswer3)
          ..add('incorrectAnswer4', incorrectAnswer4)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QuestionsRecordBuilder
    implements Builder<QuestionsRecord, QuestionsRecordBuilder> {
  _$QuestionsRecord? _$v;

  int? _trailId;
  int? get trailId => _$this._trailId;
  set trailId(int? trailId) => _$this._trailId = trailId;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _correctAnswer;
  String? get correctAnswer => _$this._correctAnswer;
  set correctAnswer(String? correctAnswer) =>
      _$this._correctAnswer = correctAnswer;

  String? _incorrectAnswer1;
  String? get incorrectAnswer1 => _$this._incorrectAnswer1;
  set incorrectAnswer1(String? incorrectAnswer1) =>
      _$this._incorrectAnswer1 = incorrectAnswer1;

  String? _incorrectAnswer2;
  String? get incorrectAnswer2 => _$this._incorrectAnswer2;
  set incorrectAnswer2(String? incorrectAnswer2) =>
      _$this._incorrectAnswer2 = incorrectAnswer2;

  String? _incorrectAnswer3;
  String? get incorrectAnswer3 => _$this._incorrectAnswer3;
  set incorrectAnswer3(String? incorrectAnswer3) =>
      _$this._incorrectAnswer3 = incorrectAnswer3;

  String? _incorrectAnswer4;
  String? get incorrectAnswer4 => _$this._incorrectAnswer4;
  set incorrectAnswer4(String? incorrectAnswer4) =>
      _$this._incorrectAnswer4 = incorrectAnswer4;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QuestionsRecordBuilder() {
    QuestionsRecord._initializeBuilder(this);
  }

  QuestionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trailId = $v.trailId;
      _question = $v.question;
      _correctAnswer = $v.correctAnswer;
      _incorrectAnswer1 = $v.incorrectAnswer1;
      _incorrectAnswer2 = $v.incorrectAnswer2;
      _incorrectAnswer3 = $v.incorrectAnswer3;
      _incorrectAnswer4 = $v.incorrectAnswer4;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionsRecord;
  }

  @override
  void update(void Function(QuestionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionsRecord build() => _build();

  _$QuestionsRecord _build() {
    final _$result = _$v ??
        new _$QuestionsRecord._(
            trailId: trailId,
            question: question,
            correctAnswer: correctAnswer,
            incorrectAnswer1: incorrectAnswer1,
            incorrectAnswer2: incorrectAnswer2,
            incorrectAnswer3: incorrectAnswer3,
            incorrectAnswer4: incorrectAnswer4,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
