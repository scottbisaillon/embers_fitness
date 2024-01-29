import 'package:bloc_effects/bloc_effects.dart';
import 'package:embers_fitness/common/utils/bloc_utils.dart';
import 'package:embers_fitness/data/repositories/workout_exercises_repository.dart';
import 'package:embers_fitness/domain/exercise_sets_model.dart';
import 'package:embers_fitness/view/common/bloc_ui_event.dart';
import 'package:embers_fitness/view/workout_exercise/bloc/workout_exercise_bloc.dart';
import 'package:embers_fitness/view/workout_exercise/widgets/exercises_search_dialog/exercises_search_dialog.dart';
import 'package:embers_fitness/view/workout_exercise/workout_exercise_page_parameters.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class WorkoutExercisePage extends StatelessWidget {
  const WorkoutExercisePage({
    required this.workoutId,
    required this.pageParameters,
    super.key,
  });

  final int workoutId;
  final WorkoutExercisePageParameters pageParameters;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorkoutExerciseBloc(
        workoutId: workoutId,
        initialExercise: pageParameters.exerciseModel,
        workoutExercisesRepository: context.read<WorkoutExercisesRepository>(),
      )..add(
          WorkoutExerciseStarted(
            exerciseSets: pageParameters.exerciseSets.toIList(),
          ),
        ),
      child: const WorkoutExerciseView(),
    );
  }
}

class WorkoutExerciseView extends HookWidget {
  const WorkoutExerciseView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.select((WorkoutExerciseBloc bloc) => bloc.state);

    final exerciseTextEditingController =
        useTextEditingController(text: state.exercise?.name);

    useEffect(
      () {
        exerciseTextEditingController.text = state.exercise?.name ?? '';
        return null;
      },
      [state.exercise],
    );

    return BlocEffectListener<WorkoutExerciseBloc, BlocUiEvent>(
      listener: blocPopEffectListener<void>,
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          }

          if (state.exercise != null) {
            context
                .read<WorkoutExerciseBloc>()
                .add(const WorkoutExerciseSaveRequested());
          } else {
            context.pop();
          }
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Add Exercise')),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                InkWell(
                  onTap: () async {
                    final result = await ExercisesSearchDialog.show(context);

                    if (result != null && context.mounted) {
                      context
                          .read<WorkoutExerciseBloc>()
                          .add(WorkoutExerciseExerciseSelected(result));
                    }
                  },
                  child: IgnorePointer(
                    child: TextField(
                      readOnly: true,
                      controller: exerciseTextEditingController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Exercise'),
                        hintText: 'Select exercise',
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sets',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    TextButton.icon(
                      onPressed: state.exercise != null
                          ? () => context
                              .read<WorkoutExerciseBloc>()
                              .add(const WorkoutExerciseSetAdded())
                          : null,
                      label: const Text('Add Set'),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                const Divider(),
                Expanded(
                  child: ListView.separated(
                    itemCount: state.sets.length,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: switch (state.sets[index]) {
                        BodyWeightSetModel(
                          number: final number,
                          reps: final reps,
                          duration: final duration,
                        ) =>
                          BodyWeightSetListItem(
                            index: index,
                            number: number,
                            reps: reps,
                            duration: duration,
                            onSetUpdated: (newReps, newDuration) =>
                                context.read<WorkoutExerciseBloc>().add(
                                      WorkoutExerciseBodyWeightSetUpdated(
                                        index: index,
                                        newReps: newReps,
                                        duration: newDuration,
                                      ),
                                    ),
                            onDelete: () =>
                                context.read<WorkoutExerciseBloc>().add(
                                      WorkoutExerciseSetDeletionRequested(
                                        index,
                                      ),
                                    ),
                          ),
                        ResistanceSetModel(
                          number: final number,
                          reps: final reps,
                          weight: final weight,
                        ) =>
                          ResistanceSetListItem(
                            index: index,
                            number: number,
                            reps: reps,
                            weight: weight,
                            onSetUpdated: (newReps, newWeight) =>
                                context.read<WorkoutExerciseBloc>().add(
                                      WorkoutExerciseResistanceSetUpdated(
                                        index: index,
                                        newReps: newReps,
                                        newWeight: newWeight,
                                      ),
                                    ),
                            onDelete: () =>
                                context.read<WorkoutExerciseBloc>().add(
                                      WorkoutExerciseSetDeletionRequested(
                                        index,
                                      ),
                                    ),
                          ),
                        // TODO(scottbisaillon): Handle this case.
                        CardioSetModel() => null,
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BodyWeightSetListItem extends StatelessWidget {
  const BodyWeightSetListItem({
    required this.index,
    required this.number,
    required this.reps,
    required this.onSetUpdated,
    required this.onDelete,
    this.duration,
    super.key,
  });

  final int index;
  final int number;
  final int reps;
  final Duration? duration;
  final void Function(int newReps, Duration newDuration) onSetUpdated;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(index),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => onDelete(),
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: Text(
            '$number',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ),
        title: Text('Reps: $reps'),
        subtitle: Text('Duration: ${duration?.formatMinutesAndSeconds()}'),
        trailing: IconButton(
          onPressed: () async {
            final result = await showModalBottomSheet<AmountBottomSheetResult>(
              context: context,
              isDismissible: false,
              builder: (context) => AmountBottomSheet(
                title: 'Reps',
                showWeight: false,
                initialReps: reps,
                initialDuration: duration ?? Duration.zero,
              ),
            );

            if (result != null) {
              onSetUpdated(result.reps, result.duration);
            }
          },
          icon: const Icon(Icons.edit),
        ),
      ),
    );
  }
}

class ResistanceSetListItem extends StatelessWidget {
  const ResistanceSetListItem({
    required this.index,
    required this.number,
    required this.reps,
    required this.weight,
    required this.onSetUpdated,
    required this.onDelete,
    super.key,
  });

  final int index;
  final int number;
  final int reps;
  final double weight;
  final void Function(int newReps, double newWeight) onSetUpdated;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(index),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => onDelete(),
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          child: Text(
            '$number',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ),
        title: Text('Reps: $reps'),
        subtitle: Text('Weight: $weight'),
        trailing: IconButton(
          onPressed: () async {
            final result = await showModalBottomSheet<AmountBottomSheetResult>(
              context: context,
              isDismissible: false,
              builder: (context) => AmountBottomSheet(
                title: 'Reps',
                showWeight: true,
                initialReps: reps,
                initialWeight: weight,
                initialDuration: Duration.zero,
              ),
            );

            if (result != null) {
              onSetUpdated(result.reps, result.weight);
            }
          },
          icon: const Icon(Icons.edit),
        ),
      ),
    );
  }
}

typedef AmountBottomSheetResult = ({
  int reps,
  double weight,
  Duration duration
});

class AmountBottomSheet extends HookWidget {
  const AmountBottomSheet({
    required this.title,
    required this.showWeight,
    required this.initialDuration,
    this.initialReps = 0,
    this.initialWeight = 0,
    super.key,
  });

  final String title;
  final bool showWeight;
  final int initialReps;
  final double initialWeight;
  final Duration initialDuration;

  @override
  Widget build(BuildContext context) {
    final reps = useState(initialReps);
    final weight = useState(initialWeight);
    final duration = useState(initialDuration);

    final tabController = useTabController(initialLength: showWeight ? 3 : 2);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TabBar(
            controller: tabController,
            tabs: [
              const Tab(icon: Icon(Icons.numbers), text: 'Reps'),
              if (showWeight)
                const Tab(icon: Icon(Icons.fitness_center), text: 'Weight'),
              const Tab(
                icon: Icon(Icons.watch_later_outlined),
                text: 'Duration',
              ),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                RepsTab(reps: reps),
                if (showWeight) WeightTab(weight: weight),
                DurationTab(duration: duration),
              ],
            ),
          ),
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () => context.pop(),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => context.pop<AmountBottomSheetResult>(
                  (
                    reps: reps.value,
                    weight: weight.value,
                    duration: duration.value,
                  ),
                ),
                child: const Text('Submit'),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}

class RepsTab extends StatelessWidget {
  const RepsTab({
    required this.reps,
    super.key,
  });

  final ValueNotifier<int> reps;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 64,
          child: Center(
            child: Text(
              reps.value.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () => reps.value = (reps.value - 10).clamp(0, 999),
              icon: const Icon(Icons.remove),
              label: const Text('10'),
            ),
            TextButton.icon(
              onPressed: () => reps.value = (reps.value - 1).clamp(0, 999),
              onLongPress: () => reps.value = (reps.value - 5).clamp(0, 999),
              icon: const Icon(Icons.remove),
              label: const Text('1/5'),
            ),
            TextButton.icon(
              onPressed: () => reps.value += 1,
              onLongPress: () => reps.value += 5,
              icon: const Icon(Icons.add),
              label: const Text('1/5'),
            ),
            TextButton.icon(
              onPressed: () => reps.value += 10,
              icon: const Icon(Icons.add),
              label: const Text('10'),
            ),
          ],
        ),
      ],
    );
  }
}

class WeightTab extends StatelessWidget {
  const WeightTab({
    required this.weight,
    super.key,
  });

  final ValueNotifier<double> weight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 64,
          child: Center(
            child: Text(
              weight.value.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () => weight.value = (weight.value - 10).clamp(0, 999),
              onLongPress: () =>
                  weight.value = (weight.value - 50).clamp(0, 999),
              icon: const Icon(Icons.remove),
              label: const Text('10/50'),
            ),
            TextButton.icon(
              onPressed: () => weight.value = (weight.value - 1).clamp(0, 999),
              onLongPress: () =>
                  weight.value = (weight.value - 5).clamp(0, 999),
              icon: const Icon(Icons.remove),
              label: const Text('1/5'),
            ),
            TextButton.icon(
              onPressed: () => weight.value += 1,
              onLongPress: () => weight.value += 5,
              icon: const Icon(Icons.add),
              label: const Text('1/5'),
            ),
            TextButton.icon(
              onPressed: () => weight.value += 10,
              onLongPress: () => weight.value += 50,
              icon: const Icon(Icons.add),
              label: const Text('10/50'),
            ),
          ],
        ),
        Row(
          children: [
            const Spacer(),
            TextButton.icon(
              onPressed: () => weight.value = (weight.value - 1).clamp(0, 999),
              onLongPress: () =>
                  weight.value = (weight.value - 5).clamp(0, 999),
              icon: const Icon(Icons.remove),
              label: const Text('0.5'),
            ),
            TextButton.icon(
              onPressed: () => weight.value += 1,
              onLongPress: () => weight.value += 5,
              icon: const Icon(Icons.add),
              label: const Text('0.5'),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}

extension DurationX on Duration {
  String formatMinutesAndSeconds() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }

  Duration subtract({
    int minutes = 0,
    int seconds = 0,
    bool allowNegative = false,
  }) {
    var newDuration = this - Duration(minutes: minutes, seconds: seconds);

    if (newDuration < Duration.zero) {
      newDuration = Duration.zero;
    }

    return newDuration;
  }

  Duration add({
    int minutes = 0,
    int seconds = 0,
  }) {
    return this + Duration(minutes: minutes, seconds: seconds);
  }
}

class DurationTab extends StatelessWidget {
  const DurationTab({
    required this.duration,
    super.key,
  });

  final ValueNotifier<Duration> duration;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              duration.value.formatMinutesAndSeconds(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () =>
                  duration.value = duration.value.subtract(minutes: 10),
              icon: const Icon(Icons.remove),
              label: const Text('10'),
            ),
            TextButton.icon(
              onPressed: () =>
                  duration.value = duration.value.subtract(minutes: 1),
              onLongPress: () =>
                  duration.value = duration.value.subtract(minutes: 5),
              icon: const Icon(Icons.remove),
              label: const Text('1/5'),
            ),
            TextButton.icon(
              onPressed: () => duration.value = duration.value.add(minutes: 1),
              onLongPress: () =>
                  duration.value = duration.value.add(minutes: 5),
              icon: const Icon(Icons.add),
              label: const Text('1/5'),
            ),
            TextButton.icon(
              onPressed: () => duration.value = duration.value.add(minutes: 10),
              icon: const Icon(Icons.add),
              label: const Text('10'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () =>
                  duration.value = duration.value.subtract(seconds: 10),
              icon: const Icon(Icons.remove),
              label: const Text('.10'),
            ),
            TextButton.icon(
              onPressed: () =>
                  duration.value = duration.value.subtract(seconds: 1),
              onLongPress: () =>
                  duration.value = duration.value.subtract(seconds: 5),
              icon: const Icon(Icons.remove),
              label: const Text('.01/.05'),
            ),
            TextButton.icon(
              onPressed: () => duration.value = duration.value.add(seconds: 1),
              onLongPress: () =>
                  duration.value = duration.value.add(seconds: 5),
              icon: const Icon(Icons.add),
              label: const Text('.01/.05'),
            ),
            TextButton.icon(
              onPressed: () => duration.value = duration.value.add(seconds: 10),
              icon: const Icon(Icons.add),
              label: const Text('.10'),
            ),
          ],
        ),
        Row(
          children: [
            const Spacer(),
            TextButton.icon(
              onPressed: () =>
                  duration.value = duration.value.subtract(seconds: 30),
              icon: const Icon(Icons.remove),
              label: const Text('0.30'),
            ),
            TextButton.icon(
              onPressed: () => duration.value = duration.value.add(seconds: 30),
              icon: const Icon(Icons.add),
              label: const Text('0.30'),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
