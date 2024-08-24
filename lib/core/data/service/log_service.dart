// Dart imports:
import 'dart:developer' as dev;

// Package imports:
import 'package:injectable/injectable.dart';

@lazySingleton
class LogService {
  Future<void> recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<Object> information = const [],
    bool? printDetails,
    bool fatal = false,
  }) async {
    dev.log('Exception', time: DateTime.now(), error: exception, stackTrace: stack);
    // it can be:
    // await FirebaseCrashlytics.instance.recordError(
    //   exception,
    //   stack,
    //   reason: reason,
    //   information: information,
    //   printDetails: printDetails,
    //   fatal: fatal,
    // );
  }

  Future<void> log(String message) async {
    dev.log(message, time: DateTime.now());
    // it can be:
    // await FirebaseCrashlytics.instance.log(message);
  }
}
