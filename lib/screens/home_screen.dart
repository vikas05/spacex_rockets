import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../providers/rocket_providers.dart';
import '../widgets/rocket_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SpaceX Rockets')),
      body: GetX<RocketController>(
        init: RocketController(),
        builder: (controller) {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: controller.rockets.length,
            itemBuilder: (context, index) {
              return RocketCard(rocket: controller.rockets[index]);
            },
          );
        },
      ),
    );
  }
}
