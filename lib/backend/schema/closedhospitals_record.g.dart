// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'closedhospitals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClosedhospitalsRecord> _$closedhospitalsRecordSerializer =
    new _$ClosedhospitalsRecordSerializer();

class _$ClosedhospitalsRecordSerializer
    implements StructuredSerializer<ClosedhospitalsRecord> {
  @override
  final Iterable<Type> types = const [
    ClosedhospitalsRecord,
    _$ClosedhospitalsRecord
  ];
  @override
  final String wireName = 'ClosedhospitalsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ClosedhospitalsRecord object,
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
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
  ClosedhospitalsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClosedhospitalsRecordBuilder();

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
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
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

class _$ClosedhospitalsRecord extends ClosedhospitalsRecord {
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? city;
  @override
  final String? picture;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClosedhospitalsRecord(
          [void Function(ClosedhospitalsRecordBuilder)? updates]) =>
      (new ClosedhospitalsRecordBuilder()..update(updates))._build();

  _$ClosedhospitalsRecord._(
      {this.name, this.location, this.city, this.picture, this.ffRef})
      : super._();

  @override
  ClosedhospitalsRecord rebuild(
          void Function(ClosedhospitalsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClosedhospitalsRecordBuilder toBuilder() =>
      new ClosedhospitalsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClosedhospitalsRecord &&
        name == other.name &&
        location == other.location &&
        city == other.city &&
        picture == other.picture &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), location.hashCode), city.hashCode),
            picture.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClosedhospitalsRecord')
          ..add('name', name)
          ..add('location', location)
          ..add('city', city)
          ..add('picture', picture)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClosedhospitalsRecordBuilder
    implements Builder<ClosedhospitalsRecord, ClosedhospitalsRecordBuilder> {
  _$ClosedhospitalsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClosedhospitalsRecordBuilder() {
    ClosedhospitalsRecord._initializeBuilder(this);
  }

  ClosedhospitalsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _city = $v.city;
      _picture = $v.picture;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClosedhospitalsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClosedhospitalsRecord;
  }

  @override
  void update(void Function(ClosedhospitalsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClosedhospitalsRecord build() => _build();

  _$ClosedhospitalsRecord _build() {
    final _$result = _$v ??
        new _$ClosedhospitalsRecord._(
            name: name,
            location: location,
            city: city,
            picture: picture,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
