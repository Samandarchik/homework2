import 'package:flutter/material.dart';
import 'package:homework_2/screens/home/components/category.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CategoryList()],
    );
  }
}
