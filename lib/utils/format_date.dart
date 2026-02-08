import 'package:intl/intl.dart';

String formatDate({required DateTime date, required String time}) {
  String formatted = DateFormat("MMM dd • $time a").format(date);
  formatted = formatted.replaceAll("AM", "a.m.").replaceAll("PM", "p.m.");
  return formatted;
}
