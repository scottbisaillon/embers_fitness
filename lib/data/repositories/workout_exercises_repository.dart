import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/data/entities/exercise_sets_entity.dart';
import 'package:embers_fitness/domain/exercise_model.dart';
import 'package:embers_fitness/domain/exercise_sets_model.dart';
import 'package:embers_fitness/domain/exercise_with_sets_model.dart';

class WorkoutExercisesRepository {
  WorkoutExercisesRepository(this.appDatabase);

  final AppDatabase appDatabase;

  Stream<List<ExerciseWithSetsModel>> watchAllForWorkout(int id) =>
      appDatabase.workoutExerciseDao.watchAllForWorkout(
        id,
        exerciseConverter: (entity) => ExerciseModel(
          id: entity.id,
          name: entity.name,
          type: entity.type,
        ),
        exerciseSetConverter: (entity) => switch (entity) {
          BodyWeightSetEntity(
            number: final number,
            reps: final reps,
            duration: final duration
          ) =>
            BodyWeightSetModel(
              number: number,
              reps: reps,
              duration: duration,
            ),
          ResistanceSetEntity(
            number: final number,
            reps: final reps,
            weight: final weight,
            duration: final duration
          ) =>
            ExerciseSetModel.resistance(
              number: number,
              reps: reps,
              weight: weight,
              duration: duration,
            ),
          CardioSetEntity(
            number: final number,
            distance: final distance,
            duration: final duration
          ) =>
            ExerciseSetModel.cardio(
              number: number,
              distance: distance,
              duration: duration,
            ),
        },
      );

  Future<void> update({
    required int workoutId,
    required int exerciseId,
    required Iterable<ExerciseSetModel> exerciseSets,
  }) =>
      appDatabase.workoutExerciseDao.updateWorkoutExercise(
        workoutId: workoutId,
        exerciseId: exerciseId,
        exerciseSets: exerciseSets,
      );

  Future<void> deleteExercise({
    required int workoutId,
    required int exerciseId,
  }) =>
      appDatabase.workoutExerciseDao
          .deleteWorkoutExercise(workoutId: workoutId, exerciseId: exerciseId);
}
