part of 'exercise_search_dialog_bloc.dart';

sealed class ExerciseSearchDialogEvent extends Equatable {
  const ExerciseSearchDialogEvent();

  @override
  List<Object?> get props => [];
}

final class ExerciseSearchDialogStarted extends ExerciseSearchDialogEvent {
  const ExerciseSearchDialogStarted();

  @override
  List<Object?> get props => [];
}

final class ExerciseSearchDialogQueryChanged extends ExerciseSearchDialogEvent {
  const ExerciseSearchDialogQueryChanged(this.value);

  final String value;

  @override
  List<Object?> get props => [value];
}

final class ExerciseSearchDialogAddExerciseRequested
    extends ExerciseSearchDialogEvent {
  const ExerciseSearchDialogAddExerciseRequested(this.type);

  final ExerciseType type;

  @override
  List<Object?> get props => [type];
}
