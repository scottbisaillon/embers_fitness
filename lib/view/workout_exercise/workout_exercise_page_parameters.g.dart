// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_exercise_page_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutExercisePageParameters _$WorkoutExercisePageParametersFromJson(
        Map<String, dynamic> json) =>
    WorkoutExercisePageParameters(
      exerciseModel:
          ExerciseModel.fromJson(json['exerciseModel'] as Map<String, dynamic>),
      exerciseSets: (json['exerciseSets'] as List<dynamic>)
          .map((e) => ExerciseSetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkoutExercisePageParametersToJson(
        WorkoutExercisePageParameters instance) =>
    <String, dynamic>{
      'exerciseModel': instance.exerciseModel,
      'exerciseSets': instance.exerciseSets,
    };
