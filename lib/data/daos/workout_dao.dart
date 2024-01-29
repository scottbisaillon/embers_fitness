import 'package:drift/drift.dart';
import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/data/tables/exercises_table.dart';
import 'package:embers_fitness/data/tables/workout_exercises_table.dart';
import 'package:embers_fitness/data/tables/workouts_table.dart';
import 'package:embers_fitness/domain/workout_model.dart';

part 'workout_dao.g.dart';

@DriftAccessor(
  tables: [Workouts, Exercises, WorkoutExercises],
)
class WorkoutDao extends DatabaseAccessor<AppDatabase> with _$WorkoutDaoMixin {
  WorkoutDao(super.db);

  Future<int> addWorkout(NewWorkoutModel model) =>
      into(workouts).insert(WorkoutsCompanion.insert(date: model.date));

  Stream<WorkoutEntity> watchWorkout(int id) =>
      (select(workouts)..where((tbl) => tbl.id.equals(id))).watchSingle();

  Stream<List<WorkoutModel>> watchAllWorkouts(
    WorkoutModel Function(WorkoutEntity entity) converter,
  ) =>
      select(workouts).map(converter).watch();

  Future<void> deleteWorkout(int id) =>
      (delete(workouts)..where((tbl) => tbl.id.equals(id))).go();
}
