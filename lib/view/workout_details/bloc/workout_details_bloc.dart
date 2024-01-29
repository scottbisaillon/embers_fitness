import 'package:bloc/bloc.dart';
import 'package:embers_fitness/common/utils/future_utils.dart';
import 'package:embers_fitness/data/repositories/workout_exercises_repository.dart';
import 'package:embers_fitness/data/repositories/workout_repository.dart';
import 'package:embers_fitness/domain/exercise_with_sets_model.dart';
import 'package:embers_fitness/domain/workout_model.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

part 'workout_details_event.dart';
part 'workout_details_state.dart';

class WorkoutDetailsBloc
    extends Bloc<WorkoutDetailsEvent, WorkoutDetailsState> {
  WorkoutDetailsBloc({
    required this.workoutId,
    required this.workoutRepository,
    required this.workoutExercisesRepository,
  }) : super(WorkoutDetailsLoading()) {
    on<WorkoutDetailsSubscriptionRequested>(_onSubscriptionRequested);
    on<WorkoutDetailsExerciseDeletionRequested>(_onExerciseDeletionRequested);
  }

  final int workoutId;
  final WorkoutRepository workoutRepository;
  final WorkoutExercisesRepository workoutExercisesRepository;

  Future<void> _onSubscriptionRequested(
    WorkoutDetailsSubscriptionRequested event,
    Emitter<WorkoutDetailsState> emit,
  ) async {
    emit(WorkoutDetailsLoading());

    await shortDelay();

    await emit.forEach(
      Rx.combineLatest2(
        workoutRepository.watchWorkout(event.id),
        workoutExercisesRepository.watchAllForWorkout(event.id),
        (a, b) => (a, b),
      ),
      onData: (data) {
        return WorkoutDetailsLoaded(workout: data.$1, exercises: data.$2);
      },
    );
  }

  void _onExerciseDeletionRequested(
    WorkoutDetailsExerciseDeletionRequested event,
    Emitter<WorkoutDetailsState> emit,
  ) =>
      workoutExercisesRepository.deleteExercise(
        workoutId: workoutId,
        exerciseId: event.id,
      );
}
