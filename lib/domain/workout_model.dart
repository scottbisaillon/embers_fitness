import 'package:intl/intl.dart';

class NewWorkoutModel {
  NewWorkoutModel({required this.date});

  final DateTime date;
}

class WorkoutModel {
  WorkoutModel({required this.id, required this.date});

  final int id;
  final DateTime date;

  String get dateFormatted => DateFormat.MMMMEEEEd().format(date.toLocal());
}
