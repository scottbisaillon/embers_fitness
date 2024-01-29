// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_sets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseSetsModelImpl _$$ExerciseSetsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseSetsModelImpl(
      values: (json['values'] as List<dynamic>)
          .map((e) => ExerciseSetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExerciseSetsModelImplToJson(
        _$ExerciseSetsModelImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
    };

_$BodyWeightSetModelImpl _$$BodyWeightSetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyWeightSetModelImpl(
      number: json['number'] as int,
      reps: json['reps'] as int,
      duration:
          const NullableDurationConverter().fromJson(json['duration'] as int?),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BodyWeightSetModelImplToJson(
        _$BodyWeightSetModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'reps': instance.reps,
      'duration': const NullableDurationConverter().toJson(instance.duration),
      'runtimeType': instance.$type,
    };

_$ResistanceSetModelImpl _$$ResistanceSetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResistanceSetModelImpl(
      number: json['number'] as int,
      reps: json['reps'] as int,
      weight: (json['weight'] as num).toDouble(),
      duration:
          const NullableDurationConverter().fromJson(json['duration'] as int?),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResistanceSetModelImplToJson(
        _$ResistanceSetModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'reps': instance.reps,
      'weight': instance.weight,
      'duration': const NullableDurationConverter().toJson(instance.duration),
      'runtimeType': instance.$type,
    };

_$CardioSetModelImpl _$$CardioSetModelImplFromJson(Map<String, dynamic> json) =>
    _$CardioSetModelImpl(
      number: json['number'] as int,
      distance: (json['distance'] as num).toDouble(),
      duration: const DurationConverter().fromJson(json['duration'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardioSetModelImplToJson(
        _$CardioSetModelImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'distance': instance.distance,
      'duration': const DurationConverter().toJson(instance.duration),
      'runtimeType': instance.$type,
    };
