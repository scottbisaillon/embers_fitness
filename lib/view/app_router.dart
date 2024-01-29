import 'package:embers_fitness/view/workout_details/workout_details_page.dart';
import 'package:embers_fitness/view/workout_exercise/workout_exercise_page.dart';
import 'package:embers_fitness/view/workout_exercise/workout_exercise_page_parameters.dart';
import 'package:embers_fitness/view/workouts/workouts_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'workouts',
      builder: (context, state) => const WorkoutsPage(),
      routes: [
        GoRoute(
          path: ':id',
          name: 'workout details',
          builder: (context, state) =>
              WorkoutDetailsPage(id: int.parse(state.pathParameters['id']!)),
          routes: [
            GoRoute(
              path: 'exercise',
              name: 'workout exercise',
              builder: (context, state) => WorkoutExercisePage(
                workoutId: int.parse(state.pathParameters['id']!),
                pageParameters: (state.extra ?? WorkoutExercisePageParameters())
                    as WorkoutExercisePageParameters,
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
