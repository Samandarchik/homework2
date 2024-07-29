import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework_2/color.dart';
import 'package:homework_2/modules/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [kDefaultShadow],
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(movie.poster))),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              movie.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/star_fill.svg",
                height: 20,
              ),
              SizedBox(
                width: kDefaultPadding / 2,
              ),
              Text(
                movie.rating.toString(),
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          )
        ],
      ),
    );
  }
}
