import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hospitals_record.g.dart';

abstract class HospitalsRecord
    implements Built<HospitalsRecord, HospitalsRecordBuilder> {
  static Serializer<HospitalsRecord> get serializer =>
      _$hospitalsRecordSerializer;

  String? get name;

  String? get picture;

  String? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HospitalsRecordBuilder builder) => builder
    ..name = ''
    ..picture = ''
    ..location = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Hospitals');

  static Stream<HospitalsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HospitalsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HospitalsRecord._();
  factory HospitalsRecord([void Function(HospitalsRecordBuilder) updates]) =
      _$HospitalsRecord;

  static HospitalsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHospitalsRecordData({
  String? name,
  String? picture,
  String? location,
}) {
  final firestoreData = serializers.toFirestore(
    HospitalsRecord.serializer,
    HospitalsRecord(
      (h) => h
        ..name = name
        ..picture = picture
        ..location = location,
    ),
  );

  return firestoreData;
}
