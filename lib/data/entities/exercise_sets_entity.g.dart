// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_sets_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseSetsEntityImpl _$$ExerciseSetsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ExerciseSetsEntityImpl(
      values: (json['values'] as List<dynamic>)
          .map((e) => ExerciseSetEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExerciseSetsEntityImplToJson(
        _$ExerciseSetsEntityImpl instance) =>
    <String, dynamic>{
      'values': instance.values,
    };

_$BodyWeightSetEntityImpl _$$BodyWeightSetEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyWeightSetEntityImpl(
      number: json['number'] as int,
      reps: json['reps'] as int,
      duration:
          const NullableDurationConverter().fromJson(json['duration'] as int?),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BodyWeightSetEntityImplToJson(
        _$BodyWeightSetEntityImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'reps': instance.reps,
      'duration': const NullableDurationConverter().toJson(instance.duration),
      'runtimeType': instance.$type,
    };

_$ResistanceSetEntityImpl _$$ResistanceSetEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ResistanceSetEntityImpl(
      number: json['number'] as int,
      reps: json['reps'] as int,
      weight: (json['weight'] as num).toDouble(),
      duration:
          const NullableDurationConverter().fromJson(json['duration'] as int?),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResistanceSetEntityImplToJson(
        _$ResistanceSetEntityImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'reps': instance.reps,
      'weight': instance.weight,
      'duration': const NullableDurationConverter().toJson(instance.duration),
      'runtimeType': instance.$type,
    };

_$CardioSetEntityImpl _$$CardioSetEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CardioSetEntityImpl(
      number: json['number'] as int,
      distance: (json['distance'] as num).toDouble(),
      duration: const DurationConverter().fromJson(json['duration'] as int),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CardioSetEntityImplToJson(
        _$CardioSetEntityImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'distance': instance.distance,
      'duration': const DurationConverter().toJson(instance.duration),
      'runtimeType': instance.$type,
    };
