// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_aid_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FirstAidRecord> _$firstAidRecordSerializer =
    new _$FirstAidRecordSerializer();

class _$FirstAidRecordSerializer
    implements StructuredSerializer<FirstAidRecord> {
  @override
  final Iterable<Type> types = const [FirstAidRecord, _$FirstAidRecord];
  @override
  final String wireName = 'FirstAidRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FirstAidRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageBG;
    if (value != null) {
      result
        ..add('ImageBG')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.documentID;
    if (value != null) {
      result
        ..add('DocumentID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.step1;
    if (value != null) {
      result
        ..add('Step1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step2;
    if (value != null) {
      result
        ..add('Step2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step3;
    if (value != null) {
      result
        ..add('Step3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step4;
    if (value != null) {
      result
        ..add('Step4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step5;
    if (value != null) {
      result
        ..add('Step5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step6;
    if (value != null) {
      result
        ..add('Step6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step7;
    if (value != null) {
      result
        ..add('Step7')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.step8;
    if (value != null) {
      result
        ..add('Step8')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video1;
    if (value != null) {
      result
        ..add('video1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video2;
    if (value != null) {
      result
        ..add('video2')
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
  FirstAidRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FirstAidRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImageBG':
          result.imageBG = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DocumentID':
          result.documentID = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Step1':
          result.step1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Step2':
          result.step2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Step3':
          result.step3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Step4':
          result.step4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Step5':
          result.step5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Step6':
          result.step6 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Step7':
          result.step7 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Step8':
          result.step8 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video1':
          result.video1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video2':
          result.video2 = serializers.deserialize(value,
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

class _$FirstAidRecord extends FirstAidRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? imageBG;
  @override
  final DocumentReference<Object?>? documentID;
  @override
  final String? step1;
  @override
  final String? step2;
  @override
  final String? step3;
  @override
  final String? step4;
  @override
  final String? step5;
  @override
  final String? step6;
  @override
  final String? step7;
  @override
  final String? step8;
  @override
  final String? video1;
  @override
  final String? video2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FirstAidRecord([void Function(FirstAidRecordBuilder)? updates]) =>
      (new FirstAidRecordBuilder()..update(updates))._build();

  _$FirstAidRecord._(
      {this.name,
      this.description,
      this.imageBG,
      this.documentID,
      this.step1,
      this.step2,
      this.step3,
      this.step4,
      this.step5,
      this.step6,
      this.step7,
      this.step8,
      this.video1,
      this.video2,
      this.ffRef})
      : super._();

  @override
  FirstAidRecord rebuild(void Function(FirstAidRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FirstAidRecordBuilder toBuilder() =>
      new FirstAidRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FirstAidRecord &&
        name == other.name &&
        description == other.description &&
        imageBG == other.imageBG &&
        documentID == other.documentID &&
        step1 == other.step1 &&
        step2 == other.step2 &&
        step3 == other.step3 &&
        step4 == other.step4 &&
        step5 == other.step5 &&
        step6 == other.step6 &&
        step7 == other.step7 &&
        step8 == other.step8 &&
        video1 == other.video1 &&
        video2 == other.video2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                name.hashCode),
                                                            description
                                                                .hashCode),
                                                        imageBG.hashCode),
                                                    documentID.hashCode),
                                                step1.hashCode),
                                            step2.hashCode),
                                        step3.hashCode),
                                    step4.hashCode),
                                step5.hashCode),
                            step6.hashCode),
                        step7.hashCode),
                    step8.hashCode),
                video1.hashCode),
            video2.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FirstAidRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('imageBG', imageBG)
          ..add('documentID', documentID)
          ..add('step1', step1)
          ..add('step2', step2)
          ..add('step3', step3)
          ..add('step4', step4)
          ..add('step5', step5)
          ..add('step6', step6)
          ..add('step7', step7)
          ..add('step8', step8)
          ..add('video1', video1)
          ..add('video2', video2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FirstAidRecordBuilder
    implements Builder<FirstAidRecord, FirstAidRecordBuilder> {
  _$FirstAidRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imageBG;
  String? get imageBG => _$this._imageBG;
  set imageBG(String? imageBG) => _$this._imageBG = imageBG;

  DocumentReference<Object?>? _documentID;
  DocumentReference<Object?>? get documentID => _$this._documentID;
  set documentID(DocumentReference<Object?>? documentID) =>
      _$this._documentID = documentID;

  String? _step1;
  String? get step1 => _$this._step1;
  set step1(String? step1) => _$this._step1 = step1;

  String? _step2;
  String? get step2 => _$this._step2;
  set step2(String? step2) => _$this._step2 = step2;

  String? _step3;
  String? get step3 => _$this._step3;
  set step3(String? step3) => _$this._step3 = step3;

  String? _step4;
  String? get step4 => _$this._step4;
  set step4(String? step4) => _$this._step4 = step4;

  String? _step5;
  String? get step5 => _$this._step5;
  set step5(String? step5) => _$this._step5 = step5;

  String? _step6;
  String? get step6 => _$this._step6;
  set step6(String? step6) => _$this._step6 = step6;

  String? _step7;
  String? get step7 => _$this._step7;
  set step7(String? step7) => _$this._step7 = step7;

  String? _step8;
  String? get step8 => _$this._step8;
  set step8(String? step8) => _$this._step8 = step8;

  String? _video1;
  String? get video1 => _$this._video1;
  set video1(String? video1) => _$this._video1 = video1;

  String? _video2;
  String? get video2 => _$this._video2;
  set video2(String? video2) => _$this._video2 = video2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FirstAidRecordBuilder() {
    FirstAidRecord._initializeBuilder(this);
  }

  FirstAidRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _imageBG = $v.imageBG;
      _documentID = $v.documentID;
      _step1 = $v.step1;
      _step2 = $v.step2;
      _step3 = $v.step3;
      _step4 = $v.step4;
      _step5 = $v.step5;
      _step6 = $v.step6;
      _step7 = $v.step7;
      _step8 = $v.step8;
      _video1 = $v.video1;
      _video2 = $v.video2;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FirstAidRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FirstAidRecord;
  }

  @override
  void update(void Function(FirstAidRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FirstAidRecord build() => _build();

  _$FirstAidRecord _build() {
    final _$result = _$v ??
        new _$FirstAidRecord._(
            name: name,
            description: description,
            imageBG: imageBG,
            documentID: documentID,
            step1: step1,
            step2: step2,
            step3: step3,
            step4: step4,
            step5: step5,
            step6: step6,
            step7: step7,
            step8: step8,
            video1: video1,
            video2: video2,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
