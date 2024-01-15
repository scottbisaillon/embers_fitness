import 'package:embers_fitness/data/app_database.dart';
import 'package:embers_fitness/data/repositories/workout_repository.dart';
import 'package:embers_fitness/view/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final appDatabase = AppDatabase();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: WorkoutRepository(appDatabase)),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}
