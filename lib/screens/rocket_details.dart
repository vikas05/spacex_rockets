
import 'package:flutter/material.dart';
import '../models/rocket.dart';
import '../widgets/image_carasauel.dart';


class RocketDetailsScreen extends StatelessWidget {
  final Rocket rocket;
  const RocketDetailsScreen({super.key, required this.rocket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(rocket.name)),
      body: Column(
        children: [
          ImageCarousel(images: rocket.flickrImages),
          Text('Country: ${rocket.country}'),
          Text('Engines: ${rocket.engines}'),
        ],
      ),
    );
  }
}
