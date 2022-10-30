


class Team{
  late String? fullName;
  late String? shortName;
  late String? captain;
  late String? flag;
  late String? captainImage;

  Team({required this.flag,required this.captain, required this.captainImage, required this.fullName, required this.shortName});

  factory Team.fromJSON(Map<String , dynamic> map){
    return Team(flag: map['flag'], captain: map['captain'], captainImage: map['captainImage'], fullName: map['fullName'], shortName: map['shortName']);
  }
}