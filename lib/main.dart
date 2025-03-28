import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'providers/rocket_providers.dart';
import 'screens/home_screen.dart';

void main() {
  // Inject dependencies before running the app
  Get.put(RocketController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpaceX Rockets',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
