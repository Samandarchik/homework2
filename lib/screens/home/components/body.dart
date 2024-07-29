import 'package:flutter/material.dart';
import 'package:homework_2/screens/home/components/generes.dart';
import 'package:homework_2/screens/home/components/category.dart';
import 'package:homework_2/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CategoryList(), Generes(), MovieCarousel()],
    );
  }
}
