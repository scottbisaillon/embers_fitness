part of 'workouts_bloc.dart';

sealed class WorkoutsState extends Equatable {
  const WorkoutsState();

  @override
  List<Object> get props => [];
}

final class WorkoutsInitial extends WorkoutsState {
  const WorkoutsInitial();
}

final class WorkoutsLoading extends WorkoutsState {
  const WorkoutsLoading();
}

final class WorkoutsLoaded extends WorkoutsState {
  const WorkoutsLoaded({required this.workouts});

  final List<WorkoutModel> workouts;

  @override
  List<Object> get props => [workouts];
}
