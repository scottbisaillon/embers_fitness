import 'package:embers_fitness/domain/exercise_type.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.g.dart';

class NewExerciseModel extends Equatable {
  const NewExerciseModel({
    required this.name,
    required this.type,
  });

  final String name;

  final ExerciseType type;

  @override
  List<Object?> get props => [name, type];
}

@JsonSerializable()
class ExerciseModel extends Equatable {
  const ExerciseModel({
    required this.id,
    required this.name,
    required this.type,
  });

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);

  final int id;

  final String name;

  final ExerciseType type;

  Map<String, dynamic> toJson() => _$ExerciseModelToJson(this);

  @override
  List<Object?> get props => [id, name, type];
}
