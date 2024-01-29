import 'package:drift/drift.dart';
import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/data/tables/exercises_table.dart';
import 'package:embers_fitness/domain/exercise_model.dart';

part 'exercises_dao.g.dart';

@DriftAccessor(
  tables: [Exercises],
)
class ExercisesDao extends DatabaseAccessor<AppDatabase>
    with _$ExercisesDaoMixin {
  ExercisesDao(super.db);

  Future<ExerciseEntity> addExercise(NewExerciseModel model) =>
      into(exercises).insertReturning(
        ExercisesCompanion.insert(
          name: model.name,
          type: model.type,
        ),
      );

  Future<List<ExerciseEntity>> getAll() => select(exercises).get();

  Stream<List<T>> watchAllFiltered<T>(
    String query, {
    required T Function(ExerciseEntity dbEntity) converter,
  }) =>
      (select(exercises)
            ..where(
              (tbl) => tbl.name.like('$query%'),
            ))
          .map(converter)
          .watch();
}
