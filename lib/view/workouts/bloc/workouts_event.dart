part of 'workouts_bloc.dart';

sealed class WorkoutsEvent extends Equatable {
  const WorkoutsEvent();

  @override
  List<Object> get props => [];
}

final class WorkoutsSubscriptionRequested extends WorkoutsEvent {
  const WorkoutsSubscriptionRequested();

  @override
  List<Object> get props => [];
}

final class WorkoutsWorkoutAdded extends WorkoutsEvent {
  const WorkoutsWorkoutAdded();

  @override
  List<Object> get props => [];
}

final class WorkoutsWorkoutDeletionRequested extends WorkoutsEvent {
  const WorkoutsWorkoutDeletionRequested({required this.id});

  final int id;

  @override
  List<Object> get props => [id];
}
