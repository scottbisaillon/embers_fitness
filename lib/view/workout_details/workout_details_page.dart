import 'package:embers_fitness/data/repositories/workout_exercises_repository.dart';
import 'package:embers_fitness/data/repositories/workout_repository.dart';
import 'package:embers_fitness/view/workout_details/bloc/workout_details_bloc.dart';
import 'package:embers_fitness/view/workout_exercise/workout_exercise_page_parameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class WorkoutDetailsPage extends StatelessWidget {
  const WorkoutDetailsPage({
    required this.id,
    super.key,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorkoutDetailsBloc(
        workoutId: id,
        workoutRepository: context.read<WorkoutRepository>(),
        workoutExercisesRepository: context.read<WorkoutExercisesRepository>(),
      )..add(WorkoutDetailsSubscriptionRequested(id)),
      child: WorkoutDetailsView(id: id),
    );
  }
}

class WorkoutDetailsView extends StatelessWidget {
  const WorkoutDetailsView({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutDetailsBloc, WorkoutDetailsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Workout Details'),
            centerTitle: true,
          ),
          body: switch (state) {
            WorkoutDetailsLoaded(exercises: final exercises) =>
              ListView.builder(
                itemCount: exercises.length,
                itemBuilder: (context, index) => Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) =>
                            context.read<WorkoutDetailsBloc>().add(
                                  WorkoutDetailsExerciseDeletionRequested(
                                    exercises[index].exercise.id,
                                  ),
                                ),
                        backgroundColor: const Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(exercises[index].exercise.name),
                    subtitle: Text(
                      'Sets: ${exercises[index].sets.length}',
                    ),
                    onTap: () => context.goNamed(
                      'workout exercise',
                      pathParameters: {'id': id.toString()},
                      extra: WorkoutExercisePageParameters(
                        exerciseModel: exercises[index].exercise,
                        exerciseSets: exercises[index].sets,
                      ),
                    ),
                  ),
                ),
              ),
            _ => const Center(
                child: CircularProgressIndicator(),
              ),
          },
          floatingActionButton: state is WorkoutDetailsLoading
              ? null
              : FloatingActionButton.extended(
                  onPressed: () => context.goNamed(
                    'workout exercise',
                    pathParameters: {'id': id.toString()},
                  ),
                  label: const Text('Add Exercises'),
                  icon: const Icon(Icons.add),
                ),
        );
      },
    );
  }
}
