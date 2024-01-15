import 'package:embers_fitness/data/repositories/workout_repository.dart';
import 'package:embers_fitness/view/workouts/bloc/workouts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkoutsPage extends StatelessWidget {
  const WorkoutsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WorkoutsBloc(workoutRepository: context.read<WorkoutRepository>())
            ..add(const WorkoutsSubscriptionRequested()),
      child: const WorkoutsView(),
    );
  }
}

class WorkoutsView extends StatelessWidget {
  const WorkoutsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutsBloc, WorkoutsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Workouts'),
            actions: [
              TextButton(
                onPressed: () => context
                    .read<WorkoutsBloc>()
                    .add(const WorkoutsWorkoutAdded()),
                child: const Text('Add Workout'),
              ),
            ],
          ),
          body: switch (state) {
            WorkoutsLoaded(workouts: final workouts) => ListView.builder(
                itemCount: workouts.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text('Workout ${workouts[index].id}'),
                  subtitle: Text(workouts[index].dateFormatted),
                  onLongPress: () => context.read<WorkoutsBloc>().add(
                        WorkoutsWorkoutDeletionRequested(
                            id: workouts[index].id),
                      ),
                ),
              ),
            _ => const Center(child: CircularProgressIndicator()),
          },
        );
      },
    );
  }
}
