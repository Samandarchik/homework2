import 'package:flutter/material.dart';
import 'package:homework_2/color.dart';

class GeneresCard extends StatelessWidget {
  final String genre;
  const GeneresCard({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: kDefaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        genre,
        style: TextStyle(color: kTextColor.withOpacity(0.8), fontSize: 16),
      ),
    );
  }
}
