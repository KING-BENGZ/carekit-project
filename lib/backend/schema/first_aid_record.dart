import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'first_aid_record.g.dart';

abstract class FirstAidRecord
    implements Built<FirstAidRecord, FirstAidRecordBuilder> {
  static Serializer<FirstAidRecord> get serializer =>
      _$firstAidRecordSerializer;

  String? get name;

  String? get description;

  @BuiltValueField(wireName: 'ImageBG')
  String? get imageBG;

  @BuiltValueField(wireName: 'DocumentID')
  DocumentReference? get documentID;

  @BuiltValueField(wireName: 'Step1')
  String? get step1;

  @BuiltValueField(wireName: 'Step2')
  String? get step2;

  @BuiltValueField(wireName: 'Step3')
  String? get step3;

  @BuiltValueField(wireName: 'Step4')
  String? get step4;

  @BuiltValueField(wireName: 'Step5')
  String? get step5;

  @BuiltValueField(wireName: 'Step6')
  String? get step6;

  @BuiltValueField(wireName: 'Step7')
  String? get step7;

  @BuiltValueField(wireName: 'Step8')
  String? get step8;

  String? get video1;

  String? get video2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FirstAidRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..imageBG = ''
    ..step1 = ''
    ..step2 = ''
    ..step3 = ''
    ..step4 = ''
    ..step5 = ''
    ..step6 = ''
    ..step7 = ''
    ..step8 = ''
    ..video1 = ''
    ..video2 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FirstAid');

  static Stream<FirstAidRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FirstAidRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FirstAidRecord._();
  factory FirstAidRecord([void Function(FirstAidRecordBuilder) updates]) =
      _$FirstAidRecord;

  static FirstAidRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFirstAidRecordData({
  String? name,
  String? description,
  String? imageBG,
  DocumentReference? documentID,
  String? step1,
  String? step2,
  String? step3,
  String? step4,
  String? step5,
  String? step6,
  String? step7,
  String? step8,
  String? video1,
  String? video2,
}) {
  final firestoreData = serializers.toFirestore(
    FirstAidRecord.serializer,
    FirstAidRecord(
      (f) => f
        ..name = name
        ..description = description
        ..imageBG = imageBG
        ..documentID = documentID
        ..step1 = step1
        ..step2 = step2
        ..step3 = step3
        ..step4 = step4
        ..step5 = step5
        ..step6 = step6
        ..step7 = step7
        ..step8 = step8
        ..video1 = video1
        ..video2 = video2,
    ),
  );

  return firestoreData;
}
