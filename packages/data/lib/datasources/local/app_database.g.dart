// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $PersonsTable extends Persons
    with TableInfo<$PersonsTable, PersonEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PersonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _systemNameMeta = const VerificationMeta(
    'systemName',
  );
  @override
  late final GeneratedColumn<String> systemName = GeneratedColumn<String>(
    'system_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _inputNameMeta = const VerificationMeta(
    'inputName',
  );
  @override
  late final GeneratedColumn<String> inputName = GeneratedColumn<String>(
    'input_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneNumberMeta = const VerificationMeta(
    'phoneNumber',
  );
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
    'phone_number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant(""),
  );
  static const VerificationMeta _isHomeDisplayMeta = const VerificationMeta(
    'isHomeDisplay',
  );
  @override
  late final GeneratedColumn<bool> isHomeDisplay = GeneratedColumn<bool>(
    'is_home_display',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_home_display" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _representativeFaceIdMeta =
      const VerificationMeta('representativeFaceId');
  @override
  late final GeneratedColumn<int> representativeFaceId = GeneratedColumn<int>(
    'representative_face_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    systemName,
    inputName,
    phoneNumber,
    isHomeDisplay,
    representativeFaceId,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'persons';
  @override
  VerificationContext validateIntegrity(
    Insertable<PersonEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('system_name')) {
      context.handle(
        _systemNameMeta,
        systemName.isAcceptableOrUnknown(data['system_name']!, _systemNameMeta),
      );
    } else if (isInserting) {
      context.missing(_systemNameMeta);
    }
    if (data.containsKey('input_name')) {
      context.handle(
        _inputNameMeta,
        inputName.isAcceptableOrUnknown(data['input_name']!, _inputNameMeta),
      );
    } else if (isInserting) {
      context.missing(_inputNameMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
        _phoneNumberMeta,
        phoneNumber.isAcceptableOrUnknown(
          data['phone_number']!,
          _phoneNumberMeta,
        ),
      );
    }
    if (data.containsKey('is_home_display')) {
      context.handle(
        _isHomeDisplayMeta,
        isHomeDisplay.isAcceptableOrUnknown(
          data['is_home_display']!,
          _isHomeDisplayMeta,
        ),
      );
    }
    if (data.containsKey('representative_face_id')) {
      context.handle(
        _representativeFaceIdMeta,
        representativeFaceId.isAcceptableOrUnknown(
          data['representative_face_id']!,
          _representativeFaceIdMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PersonEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PersonEntity(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      systemName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}system_name'],
      )!,
      inputName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}input_name'],
      )!,
      phoneNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone_number'],
      )!,
      isHomeDisplay: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_home_display'],
      )!,
      representativeFaceId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}representative_face_id'],
      ),
    );
  }

  @override
  $PersonsTable createAlias(String alias) {
    return $PersonsTable(attachedDatabase, alias);
  }
}

class PersonEntity extends DataClass implements Insertable<PersonEntity> {
  final int id;
  final String systemName;
  final String inputName;
  final String phoneNumber;
  final bool isHomeDisplay;
  final int? representativeFaceId;
  const PersonEntity({
    required this.id,
    required this.systemName,
    required this.inputName,
    required this.phoneNumber,
    required this.isHomeDisplay,
    this.representativeFaceId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['system_name'] = Variable<String>(systemName);
    map['input_name'] = Variable<String>(inputName);
    map['phone_number'] = Variable<String>(phoneNumber);
    map['is_home_display'] = Variable<bool>(isHomeDisplay);
    if (!nullToAbsent || representativeFaceId != null) {
      map['representative_face_id'] = Variable<int>(representativeFaceId);
    }
    return map;
  }

  PersonsCompanion toCompanion(bool nullToAbsent) {
    return PersonsCompanion(
      id: Value(id),
      systemName: Value(systemName),
      inputName: Value(inputName),
      phoneNumber: Value(phoneNumber),
      isHomeDisplay: Value(isHomeDisplay),
      representativeFaceId: representativeFaceId == null && nullToAbsent
          ? const Value.absent()
          : Value(representativeFaceId),
    );
  }

  factory PersonEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PersonEntity(
      id: serializer.fromJson<int>(json['id']),
      systemName: serializer.fromJson<String>(json['systemName']),
      inputName: serializer.fromJson<String>(json['inputName']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      isHomeDisplay: serializer.fromJson<bool>(json['isHomeDisplay']),
      representativeFaceId: serializer.fromJson<int?>(
        json['representativeFaceId'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'systemName': serializer.toJson<String>(systemName),
      'inputName': serializer.toJson<String>(inputName),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'isHomeDisplay': serializer.toJson<bool>(isHomeDisplay),
      'representativeFaceId': serializer.toJson<int?>(representativeFaceId),
    };
  }

  PersonEntity copyWith({
    int? id,
    String? systemName,
    String? inputName,
    String? phoneNumber,
    bool? isHomeDisplay,
    Value<int?> representativeFaceId = const Value.absent(),
  }) => PersonEntity(
    id: id ?? this.id,
    systemName: systemName ?? this.systemName,
    inputName: inputName ?? this.inputName,
    phoneNumber: phoneNumber ?? this.phoneNumber,
    isHomeDisplay: isHomeDisplay ?? this.isHomeDisplay,
    representativeFaceId: representativeFaceId.present
        ? representativeFaceId.value
        : this.representativeFaceId,
  );
  PersonEntity copyWithCompanion(PersonsCompanion data) {
    return PersonEntity(
      id: data.id.present ? data.id.value : this.id,
      systemName: data.systemName.present
          ? data.systemName.value
          : this.systemName,
      inputName: data.inputName.present ? data.inputName.value : this.inputName,
      phoneNumber: data.phoneNumber.present
          ? data.phoneNumber.value
          : this.phoneNumber,
      isHomeDisplay: data.isHomeDisplay.present
          ? data.isHomeDisplay.value
          : this.isHomeDisplay,
      representativeFaceId: data.representativeFaceId.present
          ? data.representativeFaceId.value
          : this.representativeFaceId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PersonEntity(')
          ..write('id: $id, ')
          ..write('systemName: $systemName, ')
          ..write('inputName: $inputName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('isHomeDisplay: $isHomeDisplay, ')
          ..write('representativeFaceId: $representativeFaceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    systemName,
    inputName,
    phoneNumber,
    isHomeDisplay,
    representativeFaceId,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersonEntity &&
          other.id == this.id &&
          other.systemName == this.systemName &&
          other.inputName == this.inputName &&
          other.phoneNumber == this.phoneNumber &&
          other.isHomeDisplay == this.isHomeDisplay &&
          other.representativeFaceId == this.representativeFaceId);
}

class PersonsCompanion extends UpdateCompanion<PersonEntity> {
  final Value<int> id;
  final Value<String> systemName;
  final Value<String> inputName;
  final Value<String> phoneNumber;
  final Value<bool> isHomeDisplay;
  final Value<int?> representativeFaceId;
  const PersonsCompanion({
    this.id = const Value.absent(),
    this.systemName = const Value.absent(),
    this.inputName = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.isHomeDisplay = const Value.absent(),
    this.representativeFaceId = const Value.absent(),
  });
  PersonsCompanion.insert({
    this.id = const Value.absent(),
    required String systemName,
    required String inputName,
    this.phoneNumber = const Value.absent(),
    this.isHomeDisplay = const Value.absent(),
    this.representativeFaceId = const Value.absent(),
  }) : systemName = Value(systemName),
       inputName = Value(inputName);
  static Insertable<PersonEntity> custom({
    Expression<int>? id,
    Expression<String>? systemName,
    Expression<String>? inputName,
    Expression<String>? phoneNumber,
    Expression<bool>? isHomeDisplay,
    Expression<int>? representativeFaceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (systemName != null) 'system_name': systemName,
      if (inputName != null) 'input_name': inputName,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (isHomeDisplay != null) 'is_home_display': isHomeDisplay,
      if (representativeFaceId != null)
        'representative_face_id': representativeFaceId,
    });
  }

  PersonsCompanion copyWith({
    Value<int>? id,
    Value<String>? systemName,
    Value<String>? inputName,
    Value<String>? phoneNumber,
    Value<bool>? isHomeDisplay,
    Value<int?>? representativeFaceId,
  }) {
    return PersonsCompanion(
      id: id ?? this.id,
      systemName: systemName ?? this.systemName,
      inputName: inputName ?? this.inputName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isHomeDisplay: isHomeDisplay ?? this.isHomeDisplay,
      representativeFaceId: representativeFaceId ?? this.representativeFaceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (systemName.present) {
      map['system_name'] = Variable<String>(systemName.value);
    }
    if (inputName.present) {
      map['input_name'] = Variable<String>(inputName.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (isHomeDisplay.present) {
      map['is_home_display'] = Variable<bool>(isHomeDisplay.value);
    }
    if (representativeFaceId.present) {
      map['representative_face_id'] = Variable<int>(representativeFaceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonsCompanion(')
          ..write('id: $id, ')
          ..write('systemName: $systemName, ')
          ..write('inputName: $inputName, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('isHomeDisplay: $isHomeDisplay, ')
          ..write('representativeFaceId: $representativeFaceId')
          ..write(')'))
        .toString();
  }
}

class $FacesTable extends Faces with TableInfo<$FacesTable, FaceEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FacesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _personIdMeta = const VerificationMeta(
    'personId',
  );
  @override
  late final GeneratedColumn<int> personId = GeneratedColumn<int>(
    'person_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES persons (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _systemNameMeta = const VerificationMeta(
    'systemName',
  );
  @override
  late final GeneratedColumn<String> systemName = GeneratedColumn<String>(
    'system_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageDataMeta = const VerificationMeta(
    'imageData',
  );
  @override
  late final GeneratedColumn<Uint8List> imageData = GeneratedColumn<Uint8List>(
    'image_data',
    aliasedName,
    false,
    type: DriftSqlType.blob,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, personId, systemName, imageData];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'faces';
  @override
  VerificationContext validateIntegrity(
    Insertable<FaceEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('person_id')) {
      context.handle(
        _personIdMeta,
        personId.isAcceptableOrUnknown(data['person_id']!, _personIdMeta),
      );
    } else if (isInserting) {
      context.missing(_personIdMeta);
    }
    if (data.containsKey('system_name')) {
      context.handle(
        _systemNameMeta,
        systemName.isAcceptableOrUnknown(data['system_name']!, _systemNameMeta),
      );
    } else if (isInserting) {
      context.missing(_systemNameMeta);
    }
    if (data.containsKey('image_data')) {
      context.handle(
        _imageDataMeta,
        imageData.isAcceptableOrUnknown(data['image_data']!, _imageDataMeta),
      );
    } else if (isInserting) {
      context.missing(_imageDataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FaceEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FaceEntity(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      personId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}person_id'],
      )!,
      systemName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}system_name'],
      )!,
      imageData: attachedDatabase.typeMapping.read(
        DriftSqlType.blob,
        data['${effectivePrefix}image_data'],
      )!,
    );
  }

  @override
  $FacesTable createAlias(String alias) {
    return $FacesTable(attachedDatabase, alias);
  }
}

class FaceEntity extends DataClass implements Insertable<FaceEntity> {
  final int id;
  final int personId;
  final String systemName;
  final Uint8List imageData;
  const FaceEntity({
    required this.id,
    required this.personId,
    required this.systemName,
    required this.imageData,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['person_id'] = Variable<int>(personId);
    map['system_name'] = Variable<String>(systemName);
    map['image_data'] = Variable<Uint8List>(imageData);
    return map;
  }

  FacesCompanion toCompanion(bool nullToAbsent) {
    return FacesCompanion(
      id: Value(id),
      personId: Value(personId),
      systemName: Value(systemName),
      imageData: Value(imageData),
    );
  }

  factory FaceEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FaceEntity(
      id: serializer.fromJson<int>(json['id']),
      personId: serializer.fromJson<int>(json['personId']),
      systemName: serializer.fromJson<String>(json['systemName']),
      imageData: serializer.fromJson<Uint8List>(json['imageData']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'personId': serializer.toJson<int>(personId),
      'systemName': serializer.toJson<String>(systemName),
      'imageData': serializer.toJson<Uint8List>(imageData),
    };
  }

  FaceEntity copyWith({
    int? id,
    int? personId,
    String? systemName,
    Uint8List? imageData,
  }) => FaceEntity(
    id: id ?? this.id,
    personId: personId ?? this.personId,
    systemName: systemName ?? this.systemName,
    imageData: imageData ?? this.imageData,
  );
  FaceEntity copyWithCompanion(FacesCompanion data) {
    return FaceEntity(
      id: data.id.present ? data.id.value : this.id,
      personId: data.personId.present ? data.personId.value : this.personId,
      systemName: data.systemName.present
          ? data.systemName.value
          : this.systemName,
      imageData: data.imageData.present ? data.imageData.value : this.imageData,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FaceEntity(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('systemName: $systemName, ')
          ..write('imageData: $imageData')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, personId, systemName, $driftBlobEquality.hash(imageData));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FaceEntity &&
          other.id == this.id &&
          other.personId == this.personId &&
          other.systemName == this.systemName &&
          $driftBlobEquality.equals(other.imageData, this.imageData));
}

class FacesCompanion extends UpdateCompanion<FaceEntity> {
  final Value<int> id;
  final Value<int> personId;
  final Value<String> systemName;
  final Value<Uint8List> imageData;
  const FacesCompanion({
    this.id = const Value.absent(),
    this.personId = const Value.absent(),
    this.systemName = const Value.absent(),
    this.imageData = const Value.absent(),
  });
  FacesCompanion.insert({
    this.id = const Value.absent(),
    required int personId,
    required String systemName,
    required Uint8List imageData,
  }) : personId = Value(personId),
       systemName = Value(systemName),
       imageData = Value(imageData);
  static Insertable<FaceEntity> custom({
    Expression<int>? id,
    Expression<int>? personId,
    Expression<String>? systemName,
    Expression<Uint8List>? imageData,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (personId != null) 'person_id': personId,
      if (systemName != null) 'system_name': systemName,
      if (imageData != null) 'image_data': imageData,
    });
  }

  FacesCompanion copyWith({
    Value<int>? id,
    Value<int>? personId,
    Value<String>? systemName,
    Value<Uint8List>? imageData,
  }) {
    return FacesCompanion(
      id: id ?? this.id,
      personId: personId ?? this.personId,
      systemName: systemName ?? this.systemName,
      imageData: imageData ?? this.imageData,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (personId.present) {
      map['person_id'] = Variable<int>(personId.value);
    }
    if (systemName.present) {
      map['system_name'] = Variable<String>(systemName.value);
    }
    if (imageData.present) {
      map['image_data'] = Variable<Uint8List>(imageData.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FacesCompanion(')
          ..write('id: $id, ')
          ..write('personId: $personId, ')
          ..write('systemName: $systemName, ')
          ..write('imageData: $imageData')
          ..write(')'))
        .toString();
  }
}

class $AnalyzedImagesTable extends AnalyzedImages
    with TableInfo<$AnalyzedImagesTable, AnalyzedImageEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnalyzedImagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _imageIdMeta = const VerificationMeta(
    'imageId',
  );
  @override
  late final GeneratedColumn<String> imageId = GeneratedColumn<String>(
    'image_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'),
  );
  static const VerificationMeta _fileNameMeta = const VerificationMeta(
    'fileName',
  );
  @override
  late final GeneratedColumn<String> fileName = GeneratedColumn<String>(
    'file_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, imageId, fileName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'analyzed_images';
  @override
  VerificationContext validateIntegrity(
    Insertable<AnalyzedImageEntity> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('image_id')) {
      context.handle(
        _imageIdMeta,
        imageId.isAcceptableOrUnknown(data['image_id']!, _imageIdMeta),
      );
    } else if (isInserting) {
      context.missing(_imageIdMeta);
    }
    if (data.containsKey('file_name')) {
      context.handle(
        _fileNameMeta,
        fileName.isAcceptableOrUnknown(data['file_name']!, _fileNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fileNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AnalyzedImageEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnalyzedImageEntity(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      imageId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_id'],
      )!,
      fileName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_name'],
      )!,
    );
  }

  @override
  $AnalyzedImagesTable createAlias(String alias) {
    return $AnalyzedImagesTable(attachedDatabase, alias);
  }
}

class AnalyzedImageEntity extends DataClass
    implements Insertable<AnalyzedImageEntity> {
  final int id;
  final String imageId;
  final String fileName;
  const AnalyzedImageEntity({
    required this.id,
    required this.imageId,
    required this.fileName,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['image_id'] = Variable<String>(imageId);
    map['file_name'] = Variable<String>(fileName);
    return map;
  }

  AnalyzedImagesCompanion toCompanion(bool nullToAbsent) {
    return AnalyzedImagesCompanion(
      id: Value(id),
      imageId: Value(imageId),
      fileName: Value(fileName),
    );
  }

  factory AnalyzedImageEntity.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnalyzedImageEntity(
      id: serializer.fromJson<int>(json['id']),
      imageId: serializer.fromJson<String>(json['imageId']),
      fileName: serializer.fromJson<String>(json['fileName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imageId': serializer.toJson<String>(imageId),
      'fileName': serializer.toJson<String>(fileName),
    };
  }

  AnalyzedImageEntity copyWith({int? id, String? imageId, String? fileName}) =>
      AnalyzedImageEntity(
        id: id ?? this.id,
        imageId: imageId ?? this.imageId,
        fileName: fileName ?? this.fileName,
      );
  AnalyzedImageEntity copyWithCompanion(AnalyzedImagesCompanion data) {
    return AnalyzedImageEntity(
      id: data.id.present ? data.id.value : this.id,
      imageId: data.imageId.present ? data.imageId.value : this.imageId,
      fileName: data.fileName.present ? data.fileName.value : this.fileName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AnalyzedImageEntity(')
          ..write('id: $id, ')
          ..write('imageId: $imageId, ')
          ..write('fileName: $fileName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, imageId, fileName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnalyzedImageEntity &&
          other.id == this.id &&
          other.imageId == this.imageId &&
          other.fileName == this.fileName);
}

class AnalyzedImagesCompanion extends UpdateCompanion<AnalyzedImageEntity> {
  final Value<int> id;
  final Value<String> imageId;
  final Value<String> fileName;
  const AnalyzedImagesCompanion({
    this.id = const Value.absent(),
    this.imageId = const Value.absent(),
    this.fileName = const Value.absent(),
  });
  AnalyzedImagesCompanion.insert({
    this.id = const Value.absent(),
    required String imageId,
    required String fileName,
  }) : imageId = Value(imageId),
       fileName = Value(fileName);
  static Insertable<AnalyzedImageEntity> custom({
    Expression<int>? id,
    Expression<String>? imageId,
    Expression<String>? fileName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imageId != null) 'image_id': imageId,
      if (fileName != null) 'file_name': fileName,
    });
  }

  AnalyzedImagesCompanion copyWith({
    Value<int>? id,
    Value<String>? imageId,
    Value<String>? fileName,
  }) {
    return AnalyzedImagesCompanion(
      id: id ?? this.id,
      imageId: imageId ?? this.imageId,
      fileName: fileName ?? this.fileName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imageId.present) {
      map['image_id'] = Variable<String>(imageId.value);
    }
    if (fileName.present) {
      map['file_name'] = Variable<String>(fileName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnalyzedImagesCompanion(')
          ..write('id: $id, ')
          ..write('imageId: $imageId, ')
          ..write('fileName: $fileName')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PersonsTable persons = $PersonsTable(this);
  late final $FacesTable faces = $FacesTable(this);
  late final $AnalyzedImagesTable analyzedImages = $AnalyzedImagesTable(this);
  late final PersonDao personDao = PersonDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    persons,
    faces,
    analyzedImages,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'persons',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('faces', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$PersonsTableCreateCompanionBuilder =
    PersonsCompanion Function({
      Value<int> id,
      required String systemName,
      required String inputName,
      Value<String> phoneNumber,
      Value<bool> isHomeDisplay,
      Value<int?> representativeFaceId,
    });
typedef $$PersonsTableUpdateCompanionBuilder =
    PersonsCompanion Function({
      Value<int> id,
      Value<String> systemName,
      Value<String> inputName,
      Value<String> phoneNumber,
      Value<bool> isHomeDisplay,
      Value<int?> representativeFaceId,
    });

final class $$PersonsTableReferences
    extends BaseReferences<_$AppDatabase, $PersonsTable, PersonEntity> {
  $$PersonsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$FacesTable, List<FaceEntity>> _facesRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.faces,
    aliasName: $_aliasNameGenerator(db.persons.id, db.faces.personId),
  );

  $$FacesTableProcessedTableManager get facesRefs {
    final manager = $$FacesTableTableManager(
      $_db,
      $_db.faces,
    ).filter((f) => f.personId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_facesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PersonsTableFilterComposer
    extends Composer<_$AppDatabase, $PersonsTable> {
  $$PersonsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get systemName => $composableBuilder(
    column: $table.systemName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get inputName => $composableBuilder(
    column: $table.inputName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isHomeDisplay => $composableBuilder(
    column: $table.isHomeDisplay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get representativeFaceId => $composableBuilder(
    column: $table.representativeFaceId,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> facesRefs(
    Expression<bool> Function($$FacesTableFilterComposer f) f,
  ) {
    final $$FacesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.faces,
      getReferencedColumn: (t) => t.personId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FacesTableFilterComposer(
            $db: $db,
            $table: $db.faces,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PersonsTableOrderingComposer
    extends Composer<_$AppDatabase, $PersonsTable> {
  $$PersonsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get systemName => $composableBuilder(
    column: $table.systemName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get inputName => $composableBuilder(
    column: $table.inputName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isHomeDisplay => $composableBuilder(
    column: $table.isHomeDisplay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get representativeFaceId => $composableBuilder(
    column: $table.representativeFaceId,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PersonsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PersonsTable> {
  $$PersonsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get systemName => $composableBuilder(
    column: $table.systemName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get inputName =>
      $composableBuilder(column: $table.inputName, builder: (column) => column);

  GeneratedColumn<String> get phoneNumber => $composableBuilder(
    column: $table.phoneNumber,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isHomeDisplay => $composableBuilder(
    column: $table.isHomeDisplay,
    builder: (column) => column,
  );

  GeneratedColumn<int> get representativeFaceId => $composableBuilder(
    column: $table.representativeFaceId,
    builder: (column) => column,
  );

  Expression<T> facesRefs<T extends Object>(
    Expression<T> Function($$FacesTableAnnotationComposer a) f,
  ) {
    final $$FacesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.faces,
      getReferencedColumn: (t) => t.personId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FacesTableAnnotationComposer(
            $db: $db,
            $table: $db.faces,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PersonsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PersonsTable,
          PersonEntity,
          $$PersonsTableFilterComposer,
          $$PersonsTableOrderingComposer,
          $$PersonsTableAnnotationComposer,
          $$PersonsTableCreateCompanionBuilder,
          $$PersonsTableUpdateCompanionBuilder,
          (PersonEntity, $$PersonsTableReferences),
          PersonEntity,
          PrefetchHooks Function({bool facesRefs})
        > {
  $$PersonsTableTableManager(_$AppDatabase db, $PersonsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PersonsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PersonsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PersonsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> systemName = const Value.absent(),
                Value<String> inputName = const Value.absent(),
                Value<String> phoneNumber = const Value.absent(),
                Value<bool> isHomeDisplay = const Value.absent(),
                Value<int?> representativeFaceId = const Value.absent(),
              }) => PersonsCompanion(
                id: id,
                systemName: systemName,
                inputName: inputName,
                phoneNumber: phoneNumber,
                isHomeDisplay: isHomeDisplay,
                representativeFaceId: representativeFaceId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String systemName,
                required String inputName,
                Value<String> phoneNumber = const Value.absent(),
                Value<bool> isHomeDisplay = const Value.absent(),
                Value<int?> representativeFaceId = const Value.absent(),
              }) => PersonsCompanion.insert(
                id: id,
                systemName: systemName,
                inputName: inputName,
                phoneNumber: phoneNumber,
                isHomeDisplay: isHomeDisplay,
                representativeFaceId: representativeFaceId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PersonsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({facesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (facesRefs) db.faces],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (facesRefs)
                    await $_getPrefetchedData<
                      PersonEntity,
                      $PersonsTable,
                      FaceEntity
                    >(
                      currentTable: table,
                      referencedTable: $$PersonsTableReferences._facesRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$PersonsTableReferences(db, table, p0).facesRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.personId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$PersonsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PersonsTable,
      PersonEntity,
      $$PersonsTableFilterComposer,
      $$PersonsTableOrderingComposer,
      $$PersonsTableAnnotationComposer,
      $$PersonsTableCreateCompanionBuilder,
      $$PersonsTableUpdateCompanionBuilder,
      (PersonEntity, $$PersonsTableReferences),
      PersonEntity,
      PrefetchHooks Function({bool facesRefs})
    >;
typedef $$FacesTableCreateCompanionBuilder =
    FacesCompanion Function({
      Value<int> id,
      required int personId,
      required String systemName,
      required Uint8List imageData,
    });
typedef $$FacesTableUpdateCompanionBuilder =
    FacesCompanion Function({
      Value<int> id,
      Value<int> personId,
      Value<String> systemName,
      Value<Uint8List> imageData,
    });

final class $$FacesTableReferences
    extends BaseReferences<_$AppDatabase, $FacesTable, FaceEntity> {
  $$FacesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PersonsTable _personIdTable(_$AppDatabase db) => db.persons
      .createAlias($_aliasNameGenerator(db.faces.personId, db.persons.id));

  $$PersonsTableProcessedTableManager get personId {
    final $_column = $_itemColumn<int>('person_id')!;

    final manager = $$PersonsTableTableManager(
      $_db,
      $_db.persons,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_personIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FacesTableFilterComposer extends Composer<_$AppDatabase, $FacesTable> {
  $$FacesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get systemName => $composableBuilder(
    column: $table.systemName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<Uint8List> get imageData => $composableBuilder(
    column: $table.imageData,
    builder: (column) => ColumnFilters(column),
  );

  $$PersonsTableFilterComposer get personId {
    final $$PersonsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.personId,
      referencedTable: $db.persons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PersonsTableFilterComposer(
            $db: $db,
            $table: $db.persons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FacesTableOrderingComposer
    extends Composer<_$AppDatabase, $FacesTable> {
  $$FacesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get systemName => $composableBuilder(
    column: $table.systemName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<Uint8List> get imageData => $composableBuilder(
    column: $table.imageData,
    builder: (column) => ColumnOrderings(column),
  );

  $$PersonsTableOrderingComposer get personId {
    final $$PersonsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.personId,
      referencedTable: $db.persons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PersonsTableOrderingComposer(
            $db: $db,
            $table: $db.persons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FacesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FacesTable> {
  $$FacesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get systemName => $composableBuilder(
    column: $table.systemName,
    builder: (column) => column,
  );

  GeneratedColumn<Uint8List> get imageData =>
      $composableBuilder(column: $table.imageData, builder: (column) => column);

  $$PersonsTableAnnotationComposer get personId {
    final $$PersonsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.personId,
      referencedTable: $db.persons,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PersonsTableAnnotationComposer(
            $db: $db,
            $table: $db.persons,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FacesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FacesTable,
          FaceEntity,
          $$FacesTableFilterComposer,
          $$FacesTableOrderingComposer,
          $$FacesTableAnnotationComposer,
          $$FacesTableCreateCompanionBuilder,
          $$FacesTableUpdateCompanionBuilder,
          (FaceEntity, $$FacesTableReferences),
          FaceEntity,
          PrefetchHooks Function({bool personId})
        > {
  $$FacesTableTableManager(_$AppDatabase db, $FacesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FacesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FacesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FacesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> personId = const Value.absent(),
                Value<String> systemName = const Value.absent(),
                Value<Uint8List> imageData = const Value.absent(),
              }) => FacesCompanion(
                id: id,
                personId: personId,
                systemName: systemName,
                imageData: imageData,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int personId,
                required String systemName,
                required Uint8List imageData,
              }) => FacesCompanion.insert(
                id: id,
                personId: personId,
                systemName: systemName,
                imageData: imageData,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$FacesTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({personId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (personId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.personId,
                                referencedTable: $$FacesTableReferences
                                    ._personIdTable(db),
                                referencedColumn: $$FacesTableReferences
                                    ._personIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FacesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FacesTable,
      FaceEntity,
      $$FacesTableFilterComposer,
      $$FacesTableOrderingComposer,
      $$FacesTableAnnotationComposer,
      $$FacesTableCreateCompanionBuilder,
      $$FacesTableUpdateCompanionBuilder,
      (FaceEntity, $$FacesTableReferences),
      FaceEntity,
      PrefetchHooks Function({bool personId})
    >;
typedef $$AnalyzedImagesTableCreateCompanionBuilder =
    AnalyzedImagesCompanion Function({
      Value<int> id,
      required String imageId,
      required String fileName,
    });
typedef $$AnalyzedImagesTableUpdateCompanionBuilder =
    AnalyzedImagesCompanion Function({
      Value<int> id,
      Value<String> imageId,
      Value<String> fileName,
    });

class $$AnalyzedImagesTableFilterComposer
    extends Composer<_$AppDatabase, $AnalyzedImagesTable> {
  $$AnalyzedImagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageId => $composableBuilder(
    column: $table.imageId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fileName => $composableBuilder(
    column: $table.fileName,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AnalyzedImagesTableOrderingComposer
    extends Composer<_$AppDatabase, $AnalyzedImagesTable> {
  $$AnalyzedImagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageId => $composableBuilder(
    column: $table.imageId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fileName => $composableBuilder(
    column: $table.fileName,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AnalyzedImagesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AnalyzedImagesTable> {
  $$AnalyzedImagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get imageId =>
      $composableBuilder(column: $table.imageId, builder: (column) => column);

  GeneratedColumn<String> get fileName =>
      $composableBuilder(column: $table.fileName, builder: (column) => column);
}

class $$AnalyzedImagesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AnalyzedImagesTable,
          AnalyzedImageEntity,
          $$AnalyzedImagesTableFilterComposer,
          $$AnalyzedImagesTableOrderingComposer,
          $$AnalyzedImagesTableAnnotationComposer,
          $$AnalyzedImagesTableCreateCompanionBuilder,
          $$AnalyzedImagesTableUpdateCompanionBuilder,
          (
            AnalyzedImageEntity,
            BaseReferences<
              _$AppDatabase,
              $AnalyzedImagesTable,
              AnalyzedImageEntity
            >,
          ),
          AnalyzedImageEntity,
          PrefetchHooks Function()
        > {
  $$AnalyzedImagesTableTableManager(
    _$AppDatabase db,
    $AnalyzedImagesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AnalyzedImagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AnalyzedImagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AnalyzedImagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> imageId = const Value.absent(),
                Value<String> fileName = const Value.absent(),
              }) => AnalyzedImagesCompanion(
                id: id,
                imageId: imageId,
                fileName: fileName,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String imageId,
                required String fileName,
              }) => AnalyzedImagesCompanion.insert(
                id: id,
                imageId: imageId,
                fileName: fileName,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AnalyzedImagesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AnalyzedImagesTable,
      AnalyzedImageEntity,
      $$AnalyzedImagesTableFilterComposer,
      $$AnalyzedImagesTableOrderingComposer,
      $$AnalyzedImagesTableAnnotationComposer,
      $$AnalyzedImagesTableCreateCompanionBuilder,
      $$AnalyzedImagesTableUpdateCompanionBuilder,
      (
        AnalyzedImageEntity,
        BaseReferences<
          _$AppDatabase,
          $AnalyzedImagesTable,
          AnalyzedImageEntity
        >,
      ),
      AnalyzedImageEntity,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PersonsTableTableManager get persons =>
      $$PersonsTableTableManager(_db, _db.persons);
  $$FacesTableTableManager get faces =>
      $$FacesTableTableManager(_db, _db.faces);
  $$AnalyzedImagesTableTableManager get analyzedImages =>
      $$AnalyzedImagesTableTableManager(_db, _db.analyzedImages);
}
