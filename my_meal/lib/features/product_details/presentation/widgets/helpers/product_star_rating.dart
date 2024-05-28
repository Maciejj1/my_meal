import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor();
    double remainder = rating - fullStars;
    bool hasHalfStar = remainder >= 0.5;
    bool hasAlmostFullStar = remainder >= 0.75;

    return Row(
      children: List.generate(
        5,
        (index) {
          if (index < fullStars) {
            return const Icon(Icons.star, color: Color.fromARGB(255, 255, 157, 59));
          } else if (index == fullStars && hasHalfStar) {
            return const Icon(Icons.star_half, color: Color.fromARGB(255, 255, 157, 59));
          } else if (index == fullStars && hasAlmostFullStar) {
            return const Icon(Icons.star, color: Color.fromARGB(255, 255, 157, 59));
          } else if (index == fullStars + 1 && (rating - fullStars) > 0.75) {
            return const Icon(Icons.star, color: Color.fromARGB(255, 255, 157, 59));
          } else {
            return const Icon(Icons.star_border, color: Color.fromARGB(255, 255, 157, 59));
          }
        },
      ),
    );
  }
}
