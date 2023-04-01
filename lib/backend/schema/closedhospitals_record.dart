import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'closedhospitals_record.g.dart';

abstract class ClosedhospitalsRecord
    implements Built<ClosedhospitalsRecord, ClosedhospitalsRecordBuilder> {
  static Serializer<ClosedhospitalsRecord> get serializer =>
      _$closedhospitalsRecordSerializer;

  String? get name;

  String? get location;

  String? get city;

  String? get picture;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClosedhospitalsRecordBuilder builder) =>
      builder
        ..name = ''
        ..location = ''
        ..city = ''
        ..picture = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('closedhospitals');

  static Stream<ClosedhospitalsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClosedhospitalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClosedhospitalsRecord._();
  factory ClosedhospitalsRecord(
          [void Function(ClosedhospitalsRecordBuilder) updates]) =
      _$ClosedhospitalsRecord;

  static ClosedhospitalsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClosedhospitalsRecordData({
  String? name,
  String? location,
  String? city,
  String? picture,
}) {
  final firestoreData = serializers.toFirestore(
    ClosedhospitalsRecord.serializer,
    ClosedhospitalsRecord(
      (c) => c
        ..name = name
        ..location = location
        ..city = city
        ..picture = picture,
    ),
  );

  return firestoreData;
}
