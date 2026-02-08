import 'package:intl/intl.dart';

String formatDate({required DateTime date, required String time}) {
  String formatted = DateFormat("MMM d • ").format(date);
  // formatted = formatted.replaceAll("AM", "a.m.").replaceAll("PM", "p.m.");
  return formatted + time;
}
