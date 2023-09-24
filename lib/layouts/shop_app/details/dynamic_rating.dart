import 'package:flutter/material.dart';

class DynamicStarRating extends StatefulWidget {
  @override
  _DynamicStarRatingState createState() => _DynamicStarRatingState();
}

class _DynamicStarRatingState extends State<DynamicStarRating> {
  int selectedRating = 0;

  void selectRating(int rating) {
    setState(() {
      selectedRating = rating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        final int rating = index + 1;
        return GestureDetector(
          onTap: () {
            selectRating(rating);
          },
          child: Icon(
            Icons.star,
            size: 24,
            color: rating <= selectedRating ? Colors.amber : Colors.grey,
          ),
        );
      }),
    );
  }
}
