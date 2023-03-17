import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'coins_record.g.dart';

abstract class CoinsRecord implements Built<CoinsRecord, CoinsRecordBuilder> {
  static Serializer<CoinsRecord> get serializer => _$coinsRecordSerializer;

  int? get id;

  @BuiltValueField(wireName: 'trail_id')
  int? get trailId;

  @BuiltValueField(wireName: 'coin_pic')
  String? get coinPic;

  String? get detail;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CoinsRecordBuilder builder) => builder
    ..id = 0
    ..trailId = 0
    ..coinPic = ''
    ..detail = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coins');

  static Stream<CoinsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CoinsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CoinsRecord._();
  factory CoinsRecord([void Function(CoinsRecordBuilder) updates]) =
      _$CoinsRecord;

  static CoinsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCoinsRecordData({
  int? id,
  int? trailId,
  String? coinPic,
  String? detail,
}) {
  final firestoreData = serializers.toFirestore(
    CoinsRecord.serializer,
    CoinsRecord(
      (c) => c
        ..id = id
        ..trailId = trailId
        ..coinPic = coinPic
        ..detail = detail,
    ),
  );

  return firestoreData;
}
