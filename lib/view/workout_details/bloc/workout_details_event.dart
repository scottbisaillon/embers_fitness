part of 'workout_details_bloc.dart';

sealed class WorkoutDetailsEvent extends Equatable {
  const WorkoutDetailsEvent();

  @override
  List<Object?> get props => [];
}

final class WorkoutDetailsSubscriptionRequested extends WorkoutDetailsEvent {
  const WorkoutDetailsSubscriptionRequested(this.id);

  final int id;

  @override
  List<Object?> get props => [id];
}

final class WorkoutDetailsExerciseDeletionRequested
    extends WorkoutDetailsEvent {
  const WorkoutDetailsExerciseDeletionRequested(this.id);

  final int id;

  @override
  List<Object?> get props => [id];
}
