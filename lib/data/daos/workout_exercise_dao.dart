import 'package:drift/drift.dart';
import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/data/entities/exercise_sets_entity.dart';
import 'package:embers_fitness/data/tables/workout_exercises_table.dart';
import 'package:embers_fitness/domain/exercise_model.dart';
import 'package:embers_fitness/domain/exercise_sets_model.dart';
import 'package:embers_fitness/domain/exercise_with_sets_model.dart';

part 'workout_exercise_dao.g.dart';

@DriftAccessor(
  tables: [WorkoutExercises],
)
class WorkoutExerciseDao extends DatabaseAccessor<AppDatabase>
    with _$WorkoutExerciseDaoMixin {
  WorkoutExerciseDao(super.db);

  Stream<List<ExerciseWithSetsModel>> watchAllForWorkout(
    int id, {
    required ExerciseModel Function(ExerciseEntity entity) exerciseConverter,
    required ExerciseSetModel Function(ExerciseSetEntity entity)
        exerciseSetConverter,
  }) {
    final exercisesWithSetsQuery = select(workoutExercises).join([
      innerJoin(exercises, exercises.id.equalsExp(workoutExercises.exerciseId)),
    ])
      ..where(workoutExercises.workoutId.equals(id));

    return exercisesWithSetsQuery.watch().map((rows) {
      final exerciseAndSets = <ExerciseWithSetsModel>[];

      for (final row in rows) {
        final exercise = row.readTable(exercises);
        final sets = row.readTable(workoutExercises).sets.values;

        exerciseAndSets.add(
          (
            exercise: exerciseConverter(exercise),
            sets: sets.map(exerciseSetConverter).toList()
          ),
        );
      }

      return exerciseAndSets;
    });
  }

  Future<void> updateWorkoutExercise({
    required int workoutId,
    required int exerciseId,
    required Iterable<ExerciseSetModel> exerciseSets,
  }) async =>
      into(workoutExercises).insertOnConflictUpdate(
        WorkoutExercisesCompanion.insert(
          workoutId: workoutId,
          exerciseId: exerciseId,
          sets: ExerciseSetsEntity(
            values: exerciseSets
                .map(
                  (e) => switch (e) {
                    BodyWeightSetModel(
                      number: final number,
                      reps: final reps,
                      duration: final duration
                    ) =>
                      BodyWeightSetEntity(
                        number: number,
                        reps: reps,
                        duration: duration,
                      ),
                    ResistanceSetModel(
                      number: final number,
                      reps: final reps,
                      weight: final weight,
                      duration: final duration
                    ) =>
                      ExerciseSetEntity.resistance(
                        number: number,
                        reps: reps,
                        weight: weight,
                        duration: duration,
                      ),
                    CardioSetModel(
                      number: final number,
                      distance: final distance,
                      duration: final duration
                    ) =>
                      ExerciseSetEntity.cardio(
                        number: number,
                        distance: distance,
                        duration: duration,
                      ),
                  },
                )
                .toList(),
          ),
        ),
      );

  Future<void> deleteWorkoutExercise({
    required int workoutId,
    required int exerciseId,
  }) =>
      (delete(workoutExercises)
            ..where(
              (tbl) =>
                  tbl.workoutId.equals(workoutId) &
                  tbl.exerciseId.equals(exerciseId),
            ))
          .go();
}
