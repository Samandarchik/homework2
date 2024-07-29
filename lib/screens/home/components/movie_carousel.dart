import 'package:flutter/material.dart';
import 'package:homework_2/color.dart';
import 'dart:math' as math;

import 'package:homework_2/modules/movie.dart';
import 'package:homework_2/screens/home/components/movie_card.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({super.key});

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: .8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
            controller: _pageController,
            physics: ClampingScrollPhysics(),
            itemCount: movies.length,
            itemBuilder: (context, index) => buildMovieSlider(index)),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0;
        if (_pageController.position.haveDimensions) {
          value = index - _pageController.page!;
          value = (value * 0.038).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: math.pi * value,
          child: MovieCard(movie: movies[index]),
        );
      },
      child: MovieCard(movie: movies[index]));
}
