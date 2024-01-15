import 'package:intl/intl.dart';

class NewWorkoutModel {
  final DateTime date;

  NewWorkoutModel({required this.date});
}

class WorkoutModel {
  WorkoutModel({required this.id, required this.date});

  final int id;
  final DateTime date;

  String get dateFormatted => DateFormat.MMMMEEEEd().format(date.toLocal());
}
