part of 'workout_exercise_bloc.dart';

class WorkoutExerciseState extends Equatable {
  const WorkoutExerciseState({
    this.exercise,
    this.sets = const IListConst([]),
  });

  final ExerciseModel? exercise;
  final IList<ExerciseSetModel> sets;

  WorkoutExerciseState copyWith({
    ExerciseModel? Function()? exercise,
    IList<ExerciseSetModel> Function()? sets,
  }) =>
      WorkoutExerciseState(
        exercise: exercise != null ? exercise() : this.exercise,
        sets: sets != null ? sets() : this.sets,
      );

  @override
  List<Object?> get props => [exercise, sets];
}
