

class Venue {
  late String? country;
  late String? city;
  late String? stadium;
  late String? image;

  Venue({
    required this.country,
    required this.city,
    required this.image,
    required this.stadium
});

  factory Venue.forJSON(Map<String , dynamic> map){
    return Venue(country: map['country'], city: map['city'], image: map['image'], stadium: map['stadium']);
  }

}