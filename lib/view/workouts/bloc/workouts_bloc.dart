import 'package:bloc/bloc.dart';
import 'package:embers_fitness/common/utils/future_utils.dart';
import 'package:embers_fitness/data/repositories/workout_repository.dart';
import 'package:embers_fitness/domain/workout_model.dart';
import 'package:equatable/equatable.dart';

part 'workouts_event.dart';
part 'workouts_state.dart';

class WorkoutsBloc extends Bloc<WorkoutsEvent, WorkoutsState> {
  WorkoutsBloc({required WorkoutRepository workoutRepository})
      : _workoutRepository = workoutRepository,
        super(const WorkoutsLoading()) {
    on<WorkoutsSubscriptionRequested>(_onSubscriptionRequested);
    on<WorkoutsWorkoutAdded>(_onWorkoutAdded);
    on<WorkoutsWorkoutDeletionRequested>(_onWorkoutDeletionRequested);
  }

  final WorkoutRepository _workoutRepository;

  Future<void> _onSubscriptionRequested(
    WorkoutsSubscriptionRequested event,
    Emitter<WorkoutsState> emit,
  ) async {
    emit(const WorkoutsLoading());

    await shortDelay();

    await emit.forEach(
      _workoutRepository.watchAllWorkouts(),
      onData: (data) => WorkoutsLoaded(workouts: data),
    );
  }

  void _onWorkoutAdded(
    WorkoutsWorkoutAdded event,
    Emitter<WorkoutsState> emit,
  ) {
    _workoutRepository.addWorkout(NewWorkoutModel(date: DateTime.now()));
  }

  void _onWorkoutDeletionRequested(
    WorkoutsWorkoutDeletionRequested event,
    Emitter<WorkoutsState> emit,
  ) {
    _workoutRepository.deleteWorkout(event.id);
  }
}
