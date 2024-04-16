import 'package:flutter/material.dart';

class OnboardingInfo extends StatelessWidget {
  const OnboardingInfo(
      {super.key,
      required this.title,
      required this.description,
      required this.image});

  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
