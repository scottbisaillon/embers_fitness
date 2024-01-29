import 'package:embers_fitness/common/json_converters/duration_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_sets_entity.freezed.dart';
part 'exercise_sets_entity.g.dart';

@freezed
class ExerciseSetsEntity with _$ExerciseSetsEntity {
  const factory ExerciseSetsEntity({required List<ExerciseSetEntity> values}) =
      _ExerciseSetsEntity;

  factory ExerciseSetsEntity.fromJson(Map<String, dynamic> json) =>
      _$ExerciseSetsEntityFromJson(json);

  const ExerciseSetsEntity._();
}

@freezed
sealed class ExerciseSetEntity with _$ExerciseSetEntity {
  const factory ExerciseSetEntity.bodyWeight({
    required int number,
    required int reps,
    @NullableDurationConverter() Duration? duration,
  }) = BodyWeightSetEntity;

  const factory ExerciseSetEntity.resistance({
    required int number,
    required int reps,
    required double weight,
    @NullableDurationConverter() Duration? duration,
  }) = ResistanceSetEntity;

  const factory ExerciseSetEntity.cardio({
    required int number,
    required double distance,
    @DurationConverter() required Duration duration,
  }) = CardioSetEntity;

  factory ExerciseSetEntity.fromJson(Map<String, dynamic> json) =>
      _$ExerciseSetEntityFromJson(json);
}
