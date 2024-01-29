part of 'workout_details_bloc.dart';

sealed class WorkoutDetailsState extends Equatable {
  const WorkoutDetailsState();

  @override
  List<Object> get props => [];
}

final class WorkoutDetailsInitial extends WorkoutDetailsState {}

final class WorkoutDetailsLoading extends WorkoutDetailsState {}

final class WorkoutDetailsLoaded extends WorkoutDetailsState {
  const WorkoutDetailsLoaded({required this.workout, required this.exercises});

  final WorkoutModel workout;
  final List<ExerciseWithSetsModel> exercises;

  @override
  List<Object> get props => [workout, exercises];
}
