import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:embers_fitness/data/converters.dart';
import 'package:embers_fitness/data/daos/exercises_dao.dart';
import 'package:embers_fitness/data/daos/workout_dao.dart';
import 'package:embers_fitness/data/daos/workout_exercise_dao.dart';
import 'package:embers_fitness/data/entities/exercise_sets_entity.dart';
import 'package:embers_fitness/data/tables/exercises_table.dart';
import 'package:embers_fitness/data/tables/workout_exercises_table.dart';
import 'package:embers_fitness/data/tables/workouts_table.dart';
import 'package:embers_fitness/domain/exercise_type.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection({bool logStatements = false}) {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(
      file,
      logStatements: logStatements,
    );
  });
}

@DriftDatabase(
  tables: [Workouts, Exercises, WorkoutExercises],
  daos: [WorkoutDao, ExercisesDao, WorkoutExerciseDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase({
    bool logStatements = false,
  }) : super(_openConnection(logStatements: logStatements));

  @override
  int get schemaVersion => 1;
}
