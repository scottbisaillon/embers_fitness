// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) =>
    ExerciseModel(
      id: json['id'] as int,
      name: json['name'] as String,
      type: $enumDecode(_$ExerciseTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$ExerciseModelToJson(ExerciseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$ExerciseTypeEnumMap[instance.type]!,
    };

const _$ExerciseTypeEnumMap = {
  ExerciseType.bodyWeight: 'bodyWeight',
  ExerciseType.resistance: 'resistance',
  ExerciseType.cardio: 'cardio',
};
