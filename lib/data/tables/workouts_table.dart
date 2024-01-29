import 'package:drift/drift.dart';

@DataClassName('WorkoutEntity')
class Workouts extends Table {
  IntColumn get id => integer().autoIncrement()();

  DateTimeColumn get date => dateTime()();
}
