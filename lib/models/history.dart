class History {
  late String? winner;
  late String? winnerFlag;
  late String? winnerScore;
  late String? winnerCaptain;
  late String? runnerUp;
  late String? runnerUpFlag;
  late String? runnerUpScore;
  late String? runnerUpCaptain;
  late String? host;
  late String? year;

  History(
      {required this.winner,
      required this.winnerCaptain,
      required this.winnerFlag,
      required this.winnerScore,
      required this.runnerUp,
      required this.runnerUpCaptain,
      required this.runnerUpFlag,
      required this.runnerUpScore,
      required this.host,
      required this.year
      });


  factory History.formJSON(Map<String, dynamic> map) {
    return History(winner: map['winner'], winnerCaptain: map['winnerCaptain'], winnerFlag: map['winnerFlag'], winnerScore: map['winnerScore'], runnerUp: map['runnerUp'], runnerUpCaptain: map['runnerUpCaptain'], runnerUpFlag: map['runnerUpFlag'], runnerUpScore: map['runnerUpScore'], host: map['host'], year: map['year']);
  }

}
