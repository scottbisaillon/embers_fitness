import 'package:embers_fitness/domain/exercise_model.dart';
import 'package:embers_fitness/domain/exercise_sets_model.dart';

typedef ExerciseWithSetsModel = ({
  ExerciseModel exercise,
  List<ExerciseSetModel> sets
});
