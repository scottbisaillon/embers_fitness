import 'package:embers_fitness/domain/exercise_model.dart';
import 'package:embers_fitness/domain/exercise_sets_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_exercise_page_parameters.g.dart';

@JsonSerializable()
class WorkoutExercisePageParameters {
  WorkoutExercisePageParameters({
    this.exerciseModel,
    this.exerciseSets = const [],
  });

  factory WorkoutExercisePageParameters.fromJson(Map<String, dynamic> json) =>
      _$WorkoutExercisePageParametersFromJson(json);

  final ExerciseModel? exerciseModel;
  final List<ExerciseSetModel> exerciseSets;

  Map<String, dynamic> toJson() => _$WorkoutExercisePageParametersToJson(this);
}
