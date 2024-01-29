import 'package:embers_fitness/common/json_converters/duration_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_sets_model.freezed.dart';
part 'exercise_sets_model.g.dart';

@freezed
class ExerciseSetsModel with _$ExerciseSetsModel {
  const factory ExerciseSetsModel({required List<ExerciseSetModel> values}) =
      _ExerciseSetsModel;

  factory ExerciseSetsModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseSetsModelFromJson(json);

  const ExerciseSetsModel._();
}

@freezed
sealed class ExerciseSetModel with _$ExerciseSetModel {
  const factory ExerciseSetModel.bodyWeight({
    required int number,
    required int reps,
    @NullableDurationConverter() Duration? duration,
  }) = BodyWeightSetModel;

  const factory ExerciseSetModel.resistance({
    required int number,
    required int reps,
    required double weight,
    @NullableDurationConverter() Duration? duration,
  }) = ResistanceSetModel;

  const factory ExerciseSetModel.cardio({
    required int number,
    required double distance,
    @DurationConverter() required Duration duration,
  }) = CardioSetModel;

  factory ExerciseSetModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseSetModelFromJson(json);
}
