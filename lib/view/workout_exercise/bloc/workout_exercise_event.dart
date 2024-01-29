part of 'workout_exercise_bloc.dart';

sealed class WorkoutExerciseEvent extends Equatable {
  const WorkoutExerciseEvent();

  @override
  List<Object?> get props => [];
}

final class WorkoutExerciseStarted extends WorkoutExerciseEvent {
  const WorkoutExerciseStarted({
    required this.exerciseSets,
  });

  final IList<ExerciseSetModel> exerciseSets;

  @override
  List<Object?> get props => [exerciseSets];
}

final class WorkoutExerciseExerciseSelected extends WorkoutExerciseEvent {
  const WorkoutExerciseExerciseSelected(this.value);

  final ExerciseModel? value;

  @override
  List<Object?> get props => [value];
}

final class WorkoutExerciseSetAdded extends WorkoutExerciseEvent {
  const WorkoutExerciseSetAdded();

  @override
  List<Object?> get props => [];
}

class WorkoutExerciseBodyWeightSetUpdated extends WorkoutExerciseEvent {
  const WorkoutExerciseBodyWeightSetUpdated({
    required this.index,
    required this.newReps,
    this.duration,
  });

  final int index;
  final int newReps;
  final Duration? duration;

  @override
  List<Object?> get props => [index, newReps, duration];
}

final class WorkoutExerciseResistanceSetUpdated extends WorkoutExerciseEvent {
  const WorkoutExerciseResistanceSetUpdated({
    required this.index,
    required this.newReps,
    required this.newWeight,
  });

  final int index;
  final int newReps;
  final double newWeight;

  @override
  List<Object?> get props => [index, newReps, newWeight];
}

final class WorkoutExerciseSetDeletionRequested extends WorkoutExerciseEvent {
  const WorkoutExerciseSetDeletionRequested(this.index);

  final int index;

  @override
  List<Object?> get props => [index];
}

final class WorkoutExerciseSaveRequested extends WorkoutExerciseEvent {
  const WorkoutExerciseSaveRequested();

  @override
  List<Object?> get props => [];
}
