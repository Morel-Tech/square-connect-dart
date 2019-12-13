import 'dart:convert';

import 'package:http/http.dart';

bool xor(bool a, bool b) {
  return (!a && b) || (a && !b);
}

Duration parseDuration(String formattedString) {
  if (RegExp(r"P([0-9]+Y)?([0-9]+M)?([0-9]+D)?T([0-9]+H)?([0-9]+M)?([0-9]+S)?")
      .hasMatch(formattedString)) {
    int year, month, day, hour, minute, second;
    // is formatted properly
    var ans = formattedString.substring(1);
    if (RegExp(r"[0-9]+Y.*T").hasMatch(ans)) {
      // contains year
      year = int.parse(ans.substring(0, ans.indexOf('Y')));
      ans = ans.substring(ans.indexOf('Y') + 1);
    }
    if (RegExp(r"[0-9]+M.*T").hasMatch(ans)) {
      // contains month
      month = int.parse(ans.substring(0, ans.indexOf('M')));
      ans = ans.substring(ans.indexOf('M') + 1);
    }
    if (RegExp(r"[0-9]+D").hasMatch(ans)) {
      // contains day
      day = int.parse(ans.substring(0, ans.indexOf('D')));
      ans = ans.substring(ans.indexOf('D') + 1);
    }
    ans = ans.substring(1);
    if (RegExp(r"[0-9]+H").hasMatch(ans)) {
      // contains hour
      hour = int.parse(ans.substring(0, ans.indexOf('H')));
      ans = ans.substring(ans.indexOf('H') + 1);
    }
    if (RegExp(r"[0-9]+M").hasMatch(ans)) {
      // contains minute
      minute = int.parse(ans.substring(0, ans.indexOf('M')));
      ans = ans.substring(ans.indexOf('M') + 1);
    }
    if (RegExp(r"[0-9]+S").hasMatch(ans)) {
      // contains second
      second = int.parse(ans.substring(0, ans.indexOf('S')));
      ans = ans.substring(ans.indexOf('S') + 1);
    }
    return Duration(
        days: (((year ?? 0) * 365) + ((month ?? 0) * 30) + (day ?? 0)),
        hours: hour ?? 0,
        minutes: minute ?? 0,
        seconds: second ?? 0);
  } else {
    throw ArgumentError();
  }
}

String durationToString(Duration duration) {
  var ans = 'P';
  var seconds = duration.inSeconds;

  var years = (seconds / 31536000).floor();
  seconds = seconds - years * 31536000;

  var months = (seconds / 2592000).floor();
  seconds = seconds - months * 2592000;

  var days = (seconds / 86400).floor();
  seconds = seconds - days * 86400;

  var hours = (seconds / 3600).floor();
  seconds = seconds - hours * 3600;

  var minutes = (seconds / 60).floor();
  seconds = seconds - minutes * 60;

  if (years > 0) ans += '${years}Y';
  if (months > 0) ans += '${months}M';
  if (days > 0) ans += '${days}D';
  ans += 'T';
  if (hours > 0) ans += '${hours}H';
  if (minutes > 0) ans += '${minutes}M';
  if (seconds > 0) ans += '${seconds}S';

  return ans;
}
