import 'package:flutter/material.dart';
import 'package:homework_2/color.dart';
import 'package:homework_2/components/genre_card.dart';

class Generes extends StatelessWidget {
  const Generes({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genres = ["Action", "Crime", "Drama", "Horror", "Animation"];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GeneresCard(genre: genres[index])),
    );
  }
}
