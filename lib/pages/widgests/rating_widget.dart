import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  int? rating;

  RatingWidget({Key? key, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating! ? Icons.star : Icons.star_border,
              color: Colors.yellow,
            );
          }),
        ),
        SizedBox(width: 5),
        Text(
          '${rating!}/5 Avaliações',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.withOpacity(0.7),
          ),
        )
      ],
    );
  }
}
