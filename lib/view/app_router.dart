import 'package:embers_fitness/view/workouts/workouts_page.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'workouts',
      builder: (context, state) => const WorkoutsPage(),
    ),
  ],
);
