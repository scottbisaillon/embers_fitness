import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/domain/workout_model.dart';

class WorkoutRepository {
  const WorkoutRepository(this.appDatabase);

  final AppDatabase appDatabase;

  Future<void> addWorkout(NewWorkoutModel model) =>
      appDatabase.workoutDao.addWorkout(model);

  Stream<List<WorkoutModel>> watchAllWorkouts() =>
      appDatabase.workoutDao.watchAllWorkouts(
        (dbEntity) => WorkoutModel(id: dbEntity.id, date: dbEntity.date),
      );

  Future<void> deleteWorkout(int id) =>
      appDatabase.workoutDao.deleteWorkout(id);
}
