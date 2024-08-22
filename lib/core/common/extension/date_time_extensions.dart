// Package imports:
import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime? {
  bool isSameTime(DateTime? other) {
    if (this == null) return false;
    if (other == null) return false;

    return this!.year == other.year &&
        this!.month == other.month &&
        this!.day == other.day &&
        this!.hour == other.hour &&
        this!.minute == other.minute &&
        this!.second == other.second;
  }

  bool isBeforeDate(DateTime? other) {
    if (this == null) return false;
    if (other == null) return false;
    if (this!.year < other.year) {
      return false;
    }
    if (this!.month < other.month) {
      return false;
    }

    return this!.day < other.day;
  }

  String toTimeString() {
    final format = DateFormat("HH:mm"); // .d().add_MMM().add_y().add_Hm();

    return this != null ? format.format(this!) : "";
  }

  String toApiDateString() {
    final format = DateFormat("yyyy-MM-dd");

    return this != null ? format.format(this!) : "";
  }
}

extension DateTimeAltExtensions on DateTime {
  int compare(DateTime second) {
    if (isSameTime(second)) return 0;
    if (isBefore(second)) {
      return 1;
    } else {
      return -1;
    }
  }
}
