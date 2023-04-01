// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospitals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HospitalsRecord> _$hospitalsRecordSerializer =
    new _$HospitalsRecordSerializer();

class _$HospitalsRecordSerializer
    implements StructuredSerializer<HospitalsRecord> {
  @override
  final Iterable<Type> types = const [HospitalsRecord, _$HospitalsRecord];
  @override
  final String wireName = 'HospitalsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HospitalsRecord object,
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
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
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
  HospitalsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HospitalsRecordBuilder();

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
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
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

class _$HospitalsRecord extends HospitalsRecord {
  @override
  final String? name;
  @override
  final String? picture;
  @override
  final String? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HospitalsRecord([void Function(HospitalsRecordBuilder)? updates]) =>
      (new HospitalsRecordBuilder()..update(updates))._build();

  _$HospitalsRecord._({this.name, this.picture, this.location, this.ffRef})
      : super._();

  @override
  HospitalsRecord rebuild(void Function(HospitalsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HospitalsRecordBuilder toBuilder() =>
      new HospitalsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HospitalsRecord &&
        name == other.name &&
        picture == other.picture &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), picture.hashCode), location.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HospitalsRecord')
          ..add('name', name)
          ..add('picture', picture)
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HospitalsRecordBuilder
    implements Builder<HospitalsRecord, HospitalsRecordBuilder> {
  _$HospitalsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HospitalsRecordBuilder() {
    HospitalsRecord._initializeBuilder(this);
  }

  HospitalsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _picture = $v.picture;
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HospitalsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HospitalsRecord;
  }

  @override
  void update(void Function(HospitalsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HospitalsRecord build() => _build();

  _$HospitalsRecord _build() {
    final _$result = _$v ??
        new _$HospitalsRecord._(
            name: name, picture: picture, location: location, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
