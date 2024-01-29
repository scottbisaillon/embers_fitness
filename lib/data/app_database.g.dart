// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $WorkoutsTable extends Workouts
    with TableInfo<$WorkoutsTable, WorkoutEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workouts';
  @override
  VerificationContext validateIntegrity(Insertable<WorkoutEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkoutEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
    );
  }

  @override
  $WorkoutsTable createAlias(String alias) {
    return $WorkoutsTable(attachedDatabase, alias);
  }
}

class WorkoutEntity extends DataClass implements Insertable<WorkoutEntity> {
  final int id;
  final DateTime date;
  const WorkoutEntity({required this.id, required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  WorkoutsCompanion toCompanion(bool nullToAbsent) {
    return WorkoutsCompanion(
      id: Value(id),
      date: Value(date),
    );
  }

  factory WorkoutEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutEntity(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  WorkoutEntity copyWith({int? id, DateTime? date}) => WorkoutEntity(
        id: id ?? this.id,
        date: date ?? this.date,
      );
  @override
  String toString() {
    return (StringBuffer('WorkoutEntity(')
          ..write('id: $id, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutEntity &&
          other.id == this.id &&
          other.date == this.date);
}

class WorkoutsCompanion extends UpdateCompanion<WorkoutEntity> {
  final Value<int> id;
  final Value<DateTime> date;
  const WorkoutsCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
  });
  WorkoutsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime date,
  }) : date = Value(date);
  static Insertable<WorkoutEntity> custom({
    Expression<int>? id,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
    });
  }

  WorkoutsCompanion copyWith({Value<int>? id, Value<DateTime>? date}) {
    return WorkoutsCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutsCompanion(')
          ..write('id: $id, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $ExercisesTable extends Exercises
    with TableInfo<$ExercisesTable, ExerciseEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExercisesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumnWithTypeConverter<ExerciseType, int> type =
      GeneratedColumn<int>('type', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<ExerciseType>($ExercisesTable.$convertertype);
  @override
  List<GeneratedColumn> get $columns => [id, name, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'exercises';
  @override
  VerificationContext validateIntegrity(Insertable<ExerciseEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_typeMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExerciseEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: $ExercisesTable.$convertertype.fromSql(attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!),
    );
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ExerciseType, int, int> $convertertype =
      const EnumIndexConverter<ExerciseType>(ExerciseType.values);
}

class ExerciseEntity extends DataClass implements Insertable<ExerciseEntity> {
  final int id;
  final String name;
  final ExerciseType type;
  const ExerciseEntity(
      {required this.id, required this.name, required this.type});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    {
      map['type'] = Variable<int>($ExercisesTable.$convertertype.toSql(type));
    }
    return map;
  }

  ExercisesCompanion toCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
    );
  }

  factory ExerciseEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExerciseEntity(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: $ExercisesTable.$convertertype
          .fromJson(serializer.fromJson<int>(json['type'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'type':
          serializer.toJson<int>($ExercisesTable.$convertertype.toJson(type)),
    };
  }

  ExerciseEntity copyWith({int? id, String? name, ExerciseType? type}) =>
      ExerciseEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseEntity(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExerciseEntity &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type);
}

class ExercisesCompanion extends UpdateCompanion<ExerciseEntity> {
  final Value<int> id;
  final Value<String> name;
  final Value<ExerciseType> type;
  const ExercisesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
  });
  ExercisesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required ExerciseType type,
  })  : name = Value(name),
        type = Value(type);
  static Insertable<ExerciseEntity> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
    });
  }

  ExercisesCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<ExerciseType>? type}) {
    return ExercisesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] =
          Variable<int>($ExercisesTable.$convertertype.toSql(type.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExercisesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }
}

class $WorkoutExercisesTable extends WorkoutExercises
    with TableInfo<$WorkoutExercisesTable, WorkoutExerciseEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WorkoutExercisesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _workoutIdMeta =
      const VerificationMeta('workoutId');
  @override
  late final GeneratedColumn<int> workoutId = GeneratedColumn<int>(
      'workout_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES workouts (id)'));
  static const VerificationMeta _exerciseIdMeta =
      const VerificationMeta('exerciseId');
  @override
  late final GeneratedColumn<int> exerciseId = GeneratedColumn<int>(
      'exercise_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES exercises (id)'));
  static const VerificationMeta _setsMeta = const VerificationMeta('sets');
  @override
  late final GeneratedColumnWithTypeConverter<ExerciseSetsEntity, String> sets =
      GeneratedColumn<String>('sets', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<ExerciseSetsEntity>(
              $WorkoutExercisesTable.$convertersets);
  @override
  List<GeneratedColumn> get $columns => [workoutId, exerciseId, sets];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'workout_exercises';
  @override
  VerificationContext validateIntegrity(
      Insertable<WorkoutExerciseEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('workout_id')) {
      context.handle(_workoutIdMeta,
          workoutId.isAcceptableOrUnknown(data['workout_id']!, _workoutIdMeta));
    } else if (isInserting) {
      context.missing(_workoutIdMeta);
    }
    if (data.containsKey('exercise_id')) {
      context.handle(
          _exerciseIdMeta,
          exerciseId.isAcceptableOrUnknown(
              data['exercise_id']!, _exerciseIdMeta));
    } else if (isInserting) {
      context.missing(_exerciseIdMeta);
    }
    context.handle(_setsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {workoutId, exerciseId};
  @override
  WorkoutExerciseEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WorkoutExerciseEntity(
      workoutId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}workout_id'])!,
      exerciseId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exercise_id'])!,
      sets: $WorkoutExercisesTable.$convertersets.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sets'])!),
    );
  }

  @override
  $WorkoutExercisesTable createAlias(String alias) {
    return $WorkoutExercisesTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<ExerciseSetsEntity, String, String> $convertersets =
      DriftConverters.exerciseSetsConverter;
}

class WorkoutExerciseEntity extends DataClass
    implements Insertable<WorkoutExerciseEntity> {
  final int workoutId;
  final int exerciseId;
  final ExerciseSetsEntity sets;
  const WorkoutExerciseEntity(
      {required this.workoutId, required this.exerciseId, required this.sets});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['workout_id'] = Variable<int>(workoutId);
    map['exercise_id'] = Variable<int>(exerciseId);
    {
      map['sets'] =
          Variable<String>($WorkoutExercisesTable.$convertersets.toSql(sets));
    }
    return map;
  }

  WorkoutExercisesCompanion toCompanion(bool nullToAbsent) {
    return WorkoutExercisesCompanion(
      workoutId: Value(workoutId),
      exerciseId: Value(exerciseId),
      sets: Value(sets),
    );
  }

  factory WorkoutExerciseEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WorkoutExerciseEntity(
      workoutId: serializer.fromJson<int>(json['workoutId']),
      exerciseId: serializer.fromJson<int>(json['exerciseId']),
      sets: $WorkoutExercisesTable.$convertersets
          .fromJson(serializer.fromJson<String>(json['sets'])),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'workoutId': serializer.toJson<int>(workoutId),
      'exerciseId': serializer.toJson<int>(exerciseId),
      'sets': serializer
          .toJson<String>($WorkoutExercisesTable.$convertersets.toJson(sets)),
    };
  }

  WorkoutExerciseEntity copyWith(
          {int? workoutId, int? exerciseId, ExerciseSetsEntity? sets}) =>
      WorkoutExerciseEntity(
        workoutId: workoutId ?? this.workoutId,
        exerciseId: exerciseId ?? this.exerciseId,
        sets: sets ?? this.sets,
      );
  @override
  String toString() {
    return (StringBuffer('WorkoutExerciseEntity(')
          ..write('workoutId: $workoutId, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('sets: $sets')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(workoutId, exerciseId, sets);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WorkoutExerciseEntity &&
          other.workoutId == this.workoutId &&
          other.exerciseId == this.exerciseId &&
          other.sets == this.sets);
}

class WorkoutExercisesCompanion extends UpdateCompanion<WorkoutExerciseEntity> {
  final Value<int> workoutId;
  final Value<int> exerciseId;
  final Value<ExerciseSetsEntity> sets;
  final Value<int> rowid;
  const WorkoutExercisesCompanion({
    this.workoutId = const Value.absent(),
    this.exerciseId = const Value.absent(),
    this.sets = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WorkoutExercisesCompanion.insert({
    required int workoutId,
    required int exerciseId,
    required ExerciseSetsEntity sets,
    this.rowid = const Value.absent(),
  })  : workoutId = Value(workoutId),
        exerciseId = Value(exerciseId),
        sets = Value(sets);
  static Insertable<WorkoutExerciseEntity> custom({
    Expression<int>? workoutId,
    Expression<int>? exerciseId,
    Expression<String>? sets,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (workoutId != null) 'workout_id': workoutId,
      if (exerciseId != null) 'exercise_id': exerciseId,
      if (sets != null) 'sets': sets,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WorkoutExercisesCompanion copyWith(
      {Value<int>? workoutId,
      Value<int>? exerciseId,
      Value<ExerciseSetsEntity>? sets,
      Value<int>? rowid}) {
    return WorkoutExercisesCompanion(
      workoutId: workoutId ?? this.workoutId,
      exerciseId: exerciseId ?? this.exerciseId,
      sets: sets ?? this.sets,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (workoutId.present) {
      map['workout_id'] = Variable<int>(workoutId.value);
    }
    if (exerciseId.present) {
      map['exercise_id'] = Variable<int>(exerciseId.value);
    }
    if (sets.present) {
      map['sets'] = Variable<String>(
          $WorkoutExercisesTable.$convertersets.toSql(sets.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkoutExercisesCompanion(')
          ..write('workoutId: $workoutId, ')
          ..write('exerciseId: $exerciseId, ')
          ..write('sets: $sets, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $WorkoutsTable workouts = $WorkoutsTable(this);
  late final $ExercisesTable exercises = $ExercisesTable(this);
  late final $WorkoutExercisesTable workoutExercises =
      $WorkoutExercisesTable(this);
  late final WorkoutDao workoutDao = WorkoutDao(this as AppDatabase);
  late final ExercisesDao exercisesDao = ExercisesDao(this as AppDatabase);
  late final WorkoutExerciseDao workoutExerciseDao =
      WorkoutExerciseDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [workouts, exercises, workoutExercises];
}
