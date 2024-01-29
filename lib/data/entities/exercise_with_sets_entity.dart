import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/data/entities/exercise_sets_entity.dart';

typedef ExerciseWithSetsEntity = ({
  ExerciseEntity exercise,
  List<ExerciseSetEntity> sets
});
