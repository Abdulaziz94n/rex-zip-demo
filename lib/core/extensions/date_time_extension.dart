// import 'package:intl/intl.dart';

// TODO Refactor File Functinos

import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get yMdFromDateOnly =>
      toString().replaceAll(RegExp(r'\s00:00:00.000'), '');

  String get yMdFromUTC => toString().substring(0, 10);

  String get dateAsString => DateFormat('yyyy-MM-dd').format(this);

  static DateTime dateFromString(String val) {
    return DateFormat('yyyy-MM-dd').parse(val);
  }

  // String get getShortDateAsString => DateFormat('dd MMMM yy').format(this);

  DateTime get lastMillisecondOfMonth => month < 12
      ? DateTime(year, month + 1, 1, 00, 00, 00, -1)
      : DateTime(year + 1, 1, 1, 00, 00, 00, -1);

  DateTime monthEnd(int passedMonth) {
    return passedMonth < 12
        ? DateTime(year, passedMonth + 1, 1, 00, 00, 00, -1)
        : DateTime(year + 1, 1, 1, 00, 00, 00, -1);
  }

  DateTime monthStart(int passedMonth) {
    return DateTime(year, passedMonth, 1);
  }

  static DateTime get todayStart {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 0, 0, 0, 0, 0);
  }

  static DateTime get todayEnd {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 23, 59, 59, 999, 999);
  }

  static int get todayEndToMillisec {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 23, 59, 59, 999, 999)
        .millisecondsSinceEpoch;
  }

  static int get todayStartToMillisec {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 0, 0, 0, 0, 0)
        .millisecondsSinceEpoch;
  }

  static DateTime todayStartFn() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 0, 0, 0, 0, 0);
  }

  static DateTime todayEndFn() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 23, 59, 59, 999, 999);
  }

  static int todayEndToMillisecFn() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 23, 59, 59, 999, 999)
        .millisecondsSinceEpoch;
  }

  static int todayStartToMillisecFn() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 0, 0, 0, 0, 0)
        .millisecondsSinceEpoch;
  }

  static int currentMonthStartToMillisecFn() {
    final now = DateTime.now();
    return now.monthStart(now.month).millisecondsSinceEpoch;
  }

  static int currentMonthEndToMillisecFn() {
    final now = DateTime.now();
    return now.monthEnd(now.month).millisecondsSinceEpoch;
  }

  static int currentWeekStartToMillisecFn() {
    final now = DateTime.now();
    return now.getWeekFirstDayStartInMilliSecondsSinceEpoch;
  }

  static int currentWeekEndToMillisecFn() {
    final now = DateTime.now();
    return now.getWeekLastDayStartInMilliSecondsSinceEpoch;
  }

  // List<String> get getCurrentWeekDays {
  //   final List<String> currentWeekDays = [];
  //   final now = DateTime.now();
  //   final currentDay = now.weekday;
  //   for (int i = currentDay; i >= 1; i--) {
  //     final preDayDate = now.subtract(Duration(days: i - 1));
  //     final preDay = DateFormat('yyyy-MM-dd').format(preDayDate);
  //     currentWeekDays.add(preDay);
  //   }
  //   for (int i = currentDay + 1; i <= 7; i++) {
  //     final nextDayDate = now.add(Duration(days: i - currentDay));
  //     final nextDay = DateFormat('yyyy-MM-dd').format(nextDayDate);
  //     currentWeekDays.add(nextDay);
  //   }
  //   return currentWeekDays;
  // }

  DateTime get firstMillisecondOfMonth => DateTime(year, month, 1);

  int get getWeekFirstDayStartInMilliSecondsSinceEpoch {
    var currentDay = weekday;
    var toFirstDayDiff = 0;
    while (currentDay > 1) {
      currentDay--;
      toFirstDayDiff++;
    }
    var firstWeekDay = subtract(Duration(days: toFirstDayDiff));
    var res = _getDateDayStart(firstWeekDay).millisecondsSinceEpoch;
    return res;
  }

  int get getWeekLastDayStartInMilliSecondsSinceEpoch {
    var currentDay = weekday;
    var toLastDayDiff = 0;
    while (currentDay < 7) {
      currentDay++;
      toLastDayDiff++;
    }
    var firstWeekDay = add(Duration(days: toLastDayDiff));
    var res = _getDateDayEnd(firstWeekDay).millisecondsSinceEpoch;
    return res;
  }

  bool isWithinRange(DateTime startDate, DateTime endDate) {
    return isAfter(startDate) && isBefore(endDate);
  }

  DateTime _getDateDayStart(DateTime date) {
    final res = DateTime(date.year, date.month, date.day, 0, 0, 0, 0, 0);
    return res;
  }

  DateTime _getDateDayEnd(DateTime date) {
    final res = DateTime(date.year, date.month, date.day, 23, 59, 59, 999, 999);
    return res;
  }
}
