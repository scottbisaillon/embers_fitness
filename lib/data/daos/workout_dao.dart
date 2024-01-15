import 'package:drift/drift.dart';
import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/data/tables/workouts_table.dart';
import 'package:embers_fitness/domain/workout_model.dart';

part 'workout_dao.g.dart';

@DriftAccessor(
  tables: [Workouts],
)
class WorkoutDao extends DatabaseAccessor<AppDatabase> with _$WorkoutDaoMixin {
  WorkoutDao(super.db);

  Future<int> addWorkout(NewWorkoutModel model) =>
      into(workouts).insert(WorkoutsCompanion.insert(date: model.date));

  Stream<List<WorkoutModel>> watchAllWorkouts(
    WorkoutModel Function(Workout dbEntity) converter,
  ) =>
      select(workouts).map(converter).watch();

  Future<void> deleteWorkout(int id) =>
      (delete(workouts)..where((tbl) => tbl.id.equals(id))).go();
}
