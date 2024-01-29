import 'package:drift/drift.dart';
import 'package:embers_fitness/data/entities/exercise_sets_entity.dart';

abstract class DriftConverters {
  static JsonTypeConverter<ExerciseSetsEntity, String> exerciseSetsConverter =
      TypeConverter.json(
    fromJson: (json) =>
        ExerciseSetsEntity.fromJson(json as Map<String, Object?>),
    toJson: (sets) => sets.toJson(),
  );
}
