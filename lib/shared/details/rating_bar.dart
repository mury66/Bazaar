import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final double rating;
  final int starCount = 5;
  final int size = 25;

  const RatingBar({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        IconData iconData =
            index < rating.floor() ? Icons.star : Icons.star_border;
        Color color = index < rating.floor() ? Colors.amber : Colors.grey;
        return Icon(
          iconData,
          size: 25,
          color: color,
        );
      }),
    );
  }
}
