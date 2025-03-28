
// widgets/image_carousel.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> images;
  const ImageCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0, autoPlay: true),
      items: images.map((img) => Image.network(img)).toList(),
    );
  }
}
