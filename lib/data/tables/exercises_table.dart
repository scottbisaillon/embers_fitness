import 'package:drift/drift.dart';
import 'package:embers_fitness/domain/exercise_type.dart';

@DataClassName('ExerciseEntity')
class Exercises extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().unique()();

  IntColumn get type => intEnum<ExerciseType>()();
}
