import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/domain/workout_model.dart';

class WorkoutRepository {
  const WorkoutRepository(this.appDatabase);

  final AppDatabase appDatabase;

  Future<void> addWorkout(NewWorkoutModel model) =>
      appDatabase.workoutDao.addWorkout(model);

  Stream<WorkoutModel> watchWorkout(int id) => appDatabase.workoutDao
      .watchWorkout(id)
      .map((event) => WorkoutModel(id: event.id, date: event.date));

  Stream<List<WorkoutModel>> watchAllWorkouts() =>
      appDatabase.workoutDao.watchAllWorkouts(
        (entity) => WorkoutModel(id: entity.id, date: entity.date),
      );

  Future<void> deleteWorkout(int id) =>
      appDatabase.workoutDao.deleteWorkout(id);
}
