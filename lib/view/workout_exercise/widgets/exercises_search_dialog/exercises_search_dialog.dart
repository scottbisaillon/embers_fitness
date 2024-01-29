import 'package:bloc_effects/bloc_effects.dart';
import 'package:embers_fitness/common/utils/bloc_utils.dart';
import 'package:embers_fitness/data/repositories/exercises_repository.dart';
import 'package:embers_fitness/domain/exercise_model.dart';
import 'package:embers_fitness/domain/exercise_type.dart';
import 'package:embers_fitness/view/common/bloc_ui_event.dart';
import 'package:embers_fitness/view/workout_exercise/widgets/exercises_search_dialog/bloc/exercise_search_dialog_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ExercisesSearchDialog extends StatelessWidget {
  const ExercisesSearchDialog({super.key});

  static Future<ExerciseModel?> show(BuildContext context) {
    return showDialog<ExerciseModel>(
      context: context,
      builder: (_) => BlocProvider(
        create: (_) => ExerciseSearchDialogBloc(
          exercisesRepository: context.read<ExercisesRepository>(),
        )..add(const ExerciseSearchDialogStarted()),
        child: const ExercisesSearchDialog(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocEffectListener<ExerciseSearchDialogBloc, BlocUiEvent>(
      listener: blocPopEffectListener<ExerciseModel>,
      child: BlocBuilder<ExerciseSearchDialogBloc, ExerciseSearchDialogState>(
        builder: (context, state) {
          return AlertDialog(
            content: SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      hintText: 'Search..',
                      prefixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) => context
                        .read<ExerciseSearchDialogBloc>()
                        .add(ExerciseSearchDialogQueryChanged(value)),
                  ),
                  if (state.query.isNotEmpty)
                    ListTile(
                      leading: const Icon(Icons.add),
                      title: Text("Add '${state.query}'"),
                      onTap: () async {
                        final result = await showDialog<ExerciseType>(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => AlertDialog(
                            title: const Text('Choose Type'),
                            content: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.75,
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: ListView.separated(
                                itemCount: ExerciseType.values.length,
                                separatorBuilder: (context, index) =>
                                    const Divider(),
                                itemBuilder: (context, index) => ListTile(
                                  title: Text(
                                    ExerciseType.values[index].displayValue,
                                  ),
                                  onTap: () =>
                                      context.pop(ExerciseType.values[index]),
                                ),
                              ),
                            ),
                          ),
                        );

                        if (result != null && context.mounted) {
                          context.read<ExerciseSearchDialogBloc>().add(
                                ExerciseSearchDialogAddExerciseRequested(
                                  result,
                                ),
                              );
                        }
                      },
                    ),
                  if (state.exercises.isNotEmpty && state.query.isNotEmpty)
                    const Divider(),
                  Expanded(
                    child: state.exercises.isEmpty
                        ? const Center(
                            child: Text('No exercises found.'),
                          )
                        : ListView.separated(
                            itemCount: state.exercises.length,
                            separatorBuilder: (context, index) =>
                                const Divider(),
                            itemBuilder: (context, index) => ListTile(
                              title: Text(state.exercises[index].name),
                              subtitle: Text(
                                state.exercises[index].type.displayValue,
                              ),
                              onTap: () => context.pop(state.exercises[index]),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
