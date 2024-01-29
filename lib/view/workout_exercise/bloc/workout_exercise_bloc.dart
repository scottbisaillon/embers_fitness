import 'package:bloc/bloc.dart';
import 'package:bloc_effects/bloc_effects.dart';
import 'package:embers_fitness/data/repositories/workout_exercises_repository.dart';
import 'package:embers_fitness/domain/exercise_model.dart';
import 'package:embers_fitness/domain/exercise_sets_model.dart';
import 'package:embers_fitness/domain/exercise_type.dart';
import 'package:embers_fitness/view/common/bloc_ui_event.dart';
import 'package:equatable/equatable.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';

part 'workout_exercise_event.dart';
part 'workout_exercise_state.dart';

class WorkoutExerciseBloc
    extends Bloc<WorkoutExerciseEvent, WorkoutExerciseState>
    with Effects<BlocUiEvent> {
  WorkoutExerciseBloc({
    required this.workoutId,
    required WorkoutExercisesRepository workoutExercisesRepository,
    ExerciseModel? initialExercise,
  })  : _workoutExercisesRepository = workoutExercisesRepository,
        super(WorkoutExerciseState(exercise: initialExercise)) {
    on<WorkoutExerciseStarted>(_onStarted);
    on<WorkoutExerciseExerciseSelected>(_onExerciseSelected);
    on<WorkoutExerciseSetAdded>(_onSetAdded);
    on<WorkoutExerciseBodyWeightSetUpdated>(_onBodyWeightSetUpdated);
    on<WorkoutExerciseResistanceSetUpdated>(_onResistanceSetUpdated);
    on<WorkoutExerciseSetDeletionRequested>(_onSetDeletionRequested);
    on<WorkoutExerciseSaveRequested>(_onSaveRequested);
  }

  final int workoutId;
  final WorkoutExercisesRepository _workoutExercisesRepository;

  void _onStarted(
    WorkoutExerciseStarted event,
    Emitter<WorkoutExerciseState> emit,
  ) {
    emit(
      state.copyWith(
        sets: () => event.exerciseSets,
      ),
    );
  }

  void _onExerciseSelected(
    WorkoutExerciseExerciseSelected event,
    Emitter<WorkoutExerciseState> emit,
  ) {
    emit(state.copyWith(exercise: () => event.value));
  }

  void _onSetAdded(
    WorkoutExerciseSetAdded event,
    Emitter<WorkoutExerciseState> emit,
  ) {
    final type = state.exercise!.type;

    final updatedSets = switch (type) {
      ExerciseType.bodyWeight => state.sets.add(
          ExerciseSetModel.bodyWeight(
            number: state.sets.length + 1,
            reps: state.sets.isNotEmpty
                ? (state.sets.last as BodyWeightSetModel).reps
                : 0,
            duration: state.sets.isNotEmpty
                ? (state.sets.last as BodyWeightSetModel).duration
                : Duration.zero,
          ),
        ),
      ExerciseType.resistance => state.sets.add(
          ExerciseSetModel.resistance(
            number: state.sets.length + 1,
            reps: state.sets.isNotEmpty
                ? (state.sets.last as ResistanceSetModel).reps
                : 0,
            weight: state.sets.isNotEmpty
                ? (state.sets.last as ResistanceSetModel).weight
                : 0.0,
          ),
        ),
      // TODO(scottbisaillon): Handle this case.
      ExerciseType.cardio => throw UnimplementedError(),
    };

    emit(state.copyWith(sets: () => updatedSets));
  }

  void _onBodyWeightSetUpdated(
    WorkoutExerciseBodyWeightSetUpdated event,
    Emitter<WorkoutExerciseState> emit,
  ) {
    final setToUpdate = state.sets.get(event.index) as BodyWeightSetModel;

    final updatedSets = state.sets.replace(
      event.index,
      setToUpdate.copyWith(
        reps: event.newReps,
        duration: event.duration,
      ),
    );

    emit(state.copyWith(sets: () => updatedSets));
  }

  void _onResistanceSetUpdated(
    WorkoutExerciseResistanceSetUpdated event,
    Emitter<WorkoutExerciseState> emit,
  ) {
    final setToUpdate = state.sets.get(event.index) as ResistanceSetModel;

    final updatedSets = state.sets.replace(
      event.index,
      setToUpdate.copyWith(
        reps: event.newReps,
        weight: event.newWeight,
      ),
    );

    emit(state.copyWith(sets: () => updatedSets));
  }

  void _onSetDeletionRequested(
    WorkoutExerciseSetDeletionRequested event,
    Emitter<WorkoutExerciseState> emit,
  ) {
    var updatedSets = state.sets.removeAt(event.index);

    for (var i = 0; i < updatedSets.length; i++) {
      updatedSets =
          updatedSets.replace(i, updatedSets.get(i).copyWith(number: i + 1));
    }

    emit(state.copyWith(sets: () => updatedSets));
  }

  Future<void> _onSaveRequested(
    WorkoutExerciseSaveRequested event,
    Emitter<WorkoutExerciseState> emit,
  ) async {
    await _workoutExercisesRepository.update(
      workoutId: workoutId,
      exerciseId: state.exercise!.id,
      exerciseSets: state.sets,
    );

    emitEffect(const PopEvent<void>.empty());
  }
}
