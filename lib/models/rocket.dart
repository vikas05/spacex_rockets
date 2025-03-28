// models/rocket.dart
import 'dart:convert';

List<Rocket> rocketFromJson(String str) =>
    List<Rocket>.from(json.decode(str).map((x) => Rocket.fromJson(x)));

class Rocket {
  String id;
  String name;
  String country;
  int engines;
  List<String> flickrImages;

  Rocket(
      {required this.id,
      required this.name,
      required this.country,
      required this.engines,
      required this.flickrImages});

  factory Rocket.fromJson(Map<String, dynamic> json) => Rocket(
        id: json['id'],
        name: json['name'],
        country: json['country'],
        engines: json['engines']['number'],
        flickrImages: List<String>.from(json['flickr_images'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'country': country,
        'engines': engines,
        'flickr_images': jsonEncode(flickrImages),
      };
}
