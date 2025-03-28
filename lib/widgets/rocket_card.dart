
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/rocket.dart';
import '../screens/rocket_details.dart';


class RocketCard extends StatelessWidget {
  final Rocket rocket;
  const RocketCard({super.key, required this.rocket});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(rocket.name),
      subtitle: Text(rocket.country),
      onTap: () => Get.to(() => RocketDetailsScreen(rocket: rocket)),
    );
  }
}
