import 'package:flutter/material.dart';
import 'package:homework_2/color.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      height: 61,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategory(index, context)),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedCategory = index;
              });
            },
            child: Text(
              categories[index],
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                  color: index == selectedCategory
                      ? kTextColor
                      : Colors.black.withOpacity(.5)),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            height: 6,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory
                    ? kSecondaryColor
                    : Colors.transparent),
          )
        ],
      ),
    );
  }
}
