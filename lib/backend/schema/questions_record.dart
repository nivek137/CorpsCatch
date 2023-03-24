import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'questions_record.g.dart';

abstract class QuestionsRecord
    implements Built<QuestionsRecord, QuestionsRecordBuilder> {
  static Serializer<QuestionsRecord> get serializer =>
      _$questionsRecordSerializer;

  @BuiltValueField(wireName: 'trail_id')
  int? get trailId;

  String? get question;

  String? get correctAnswer;

  @BuiltValueField(wireName: 'IncorrectAnswer1')
  String? get incorrectAnswer1;

  @BuiltValueField(wireName: 'IncorrectAnswer2')
  String? get incorrectAnswer2;

  @BuiltValueField(wireName: 'IncorrectAnswer3')
  String? get incorrectAnswer3;

  @BuiltValueField(wireName: 'IncorrectAnswer4')
  String? get incorrectAnswer4;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(QuestionsRecordBuilder builder) => builder
    ..trailId = 0
    ..question = ''
    ..correctAnswer = ''
    ..incorrectAnswer1 = ''
    ..incorrectAnswer2 = ''
    ..incorrectAnswer3 = ''
    ..incorrectAnswer4 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QuestionsRecord._();
  factory QuestionsRecord([void Function(QuestionsRecordBuilder) updates]) =
      _$QuestionsRecord;

  static QuestionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQuestionsRecordData({
  int? trailId,
  String? question,
  String? correctAnswer,
  String? incorrectAnswer1,
  String? incorrectAnswer2,
  String? incorrectAnswer3,
  String? incorrectAnswer4,
}) {
  final firestoreData = serializers.toFirestore(
    QuestionsRecord.serializer,
    QuestionsRecord(
      (q) => q
        ..trailId = trailId
        ..question = question
        ..correctAnswer = correctAnswer
        ..incorrectAnswer1 = incorrectAnswer1
        ..incorrectAnswer2 = incorrectAnswer2
        ..incorrectAnswer3 = incorrectAnswer3
        ..incorrectAnswer4 = incorrectAnswer4,
    ),
  );

  return firestoreData;
}
