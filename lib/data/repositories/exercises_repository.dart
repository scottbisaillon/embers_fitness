import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/domain/exercise_model.dart';

class ExercisesRepository {
  ExercisesRepository(this.appDatabase);

  final AppDatabase appDatabase;

  Future<ExerciseModel> addExercise(NewExerciseModel model) async {
    final result = await appDatabase.exercisesDao.addExercise(model);

    return ExerciseModel(
      id: result.id,
      name: result.name,
      type: result.type,
    );
  }

  Stream<List<ExerciseModel>> watchAllFiltered(String query) =>
      appDatabase.exercisesDao.watchAllFiltered(
        query,
        converter: (entity) => ExerciseModel(
          id: entity.id,
          name: entity.name,
          type: entity.type,
        ),
      );
}
