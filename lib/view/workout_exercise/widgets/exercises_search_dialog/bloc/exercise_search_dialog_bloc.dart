import 'package:bloc/bloc.dart';
import 'package:bloc_effects/bloc_effects.dart';
import 'package:embers_fitness/data/repositories/exercises_repository.dart';
import 'package:embers_fitness/domain/exercise_model.dart';
import 'package:embers_fitness/domain/exercise_type.dart';
import 'package:embers_fitness/view/common/bloc_ui_event.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

part 'exercise_search_dialog_event.dart';
part 'exercise_search_dialog_state.dart';

EventTransformer<T> debounce<T>(Duration duration) => (
      events,
      mapper,
    ) =>
        events.debounceTime(duration).flatMap(mapper);

class ExerciseSearchDialogBloc
    extends Bloc<ExerciseSearchDialogEvent, ExerciseSearchDialogState>
    with Effects<BlocUiEvent> {
  ExerciseSearchDialogBloc({
    required this.exercisesRepository,
  }) : super(const ExerciseSearchDialogState()) {
    on<ExerciseSearchDialogStarted>(_onStarted);
    on<ExerciseSearchDialogQueryChanged>(
      _onQueryChanged,
      transformer: debounce(const Duration(milliseconds: 500)),
    );
    on<ExerciseSearchDialogAddExerciseRequested>(_onAddExerciseRequested);
  }

  final ExercisesRepository exercisesRepository;

  final _query = BehaviorSubject<String>();

  Future<void> _onStarted(
    ExerciseSearchDialogStarted event,
    Emitter<ExerciseSearchDialogState> emit,
  ) async {
    _query.add('');
    await emit.forEach(
      _query.flatMap(exercisesRepository.watchAllFiltered),
      onData: (data) => state.copyWith(exercises: data),
    );
  }

  void _onQueryChanged(
    ExerciseSearchDialogQueryChanged event,
    Emitter<ExerciseSearchDialogState> emit,
  ) {
    _query.add(event.value);
    emit(state.copyWith(query: event.value));
  }

  Future<void> _onAddExerciseRequested(
    ExerciseSearchDialogAddExerciseRequested event,
    Emitter<ExerciseSearchDialogState> emit,
  ) async {
    final result = await exercisesRepository.addExercise(
      NewExerciseModel(
        name: state.query.trim().toLowerCase(),
        type: event.type,
      ),
    );

    emitEffect(PopEvent(result));
  }
}
