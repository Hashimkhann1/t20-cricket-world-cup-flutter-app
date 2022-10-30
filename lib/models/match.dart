
import 'dart:core';

class Match {
  late String? date;
  late String? teamOne;
  late String? teamTwo;
  late String? flagOne;
  late String? flagTwo;
  late String? group;
  late String? venue;
  late String? time;

  Match({required this.date,required this.flagOne, required this.flagTwo, required this.group, required this.teamOne, required this.teamTwo,required this.time,required this.venue});

  factory Match.formJSON(Map<String, dynamic> map) {
    return Match(date: map['date'], flagOne: map['flagOne'], flagTwo: map['flagTwo'], group: map['group'], teamOne: map['teamOne'], teamTwo: map['teamOne'],time: map['time'],venue: map['venue']);
}

}