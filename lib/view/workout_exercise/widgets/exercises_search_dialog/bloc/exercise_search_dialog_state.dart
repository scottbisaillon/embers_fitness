part of 'exercise_search_dialog_bloc.dart';

enum ExerciseSearchDialogStatus { initial, loading, success }

class ExerciseSearchDialogState extends Equatable {
  const ExerciseSearchDialogState({
    this.status = ExerciseSearchDialogStatus.initial,
    this.query = '',
    this.exercises = const [],
  });

  final ExerciseSearchDialogStatus status;
  final String query;
  final List<ExerciseModel> exercises;

  ExerciseSearchDialogState copyWith({
    ExerciseSearchDialogStatus? status,
    String? query,
    List<ExerciseModel>? exercises,
  }) =>
      ExerciseSearchDialogState(
        status: status ?? this.status,
        query: query ?? this.query,
        exercises: exercises ?? this.exercises,
      );

  @override
  List<Object> get props => [status, query, exercises];
}
