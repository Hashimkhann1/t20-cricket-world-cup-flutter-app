
import 'dart:core';

class Match {
  late String date;
  late String teamOne;
  late String teamTwo;
  late String flagOne;
  late String flagTwo;
  late String group;

  Match({required this.date,required this.flagOne, required this.flagTwo, required this.group, required this.teamOne, required this.teamTwo});

  factory Match.formJSOn(Map<String, dynamic> map) {
    return Match(date: map['date'], flagOne: map['flagOne'], flagTwo: map['flag'], group: group, teamOne: teamOne, teamTwo: teamTwo)
}

}