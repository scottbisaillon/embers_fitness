import 'package:drift/drift.dart';
import 'package:embers_fitness/data/converters.dart';
import 'package:embers_fitness/data/tables/exercises_table.dart';
import 'package:embers_fitness/data/tables/workouts_table.dart';

@DataClassName('WorkoutExerciseEntity')
class WorkoutExercises extends Table {
  IntColumn get workoutId => integer().references(Workouts, #id)();
  IntColumn get exerciseId => integer().references(Exercises, #id)();

  TextColumn get sets => text().map(DriftConverters.exerciseSetsConverter)();

  @override
  Set<Column<Object>>? get primaryKey => {workoutId, exerciseId};
}
