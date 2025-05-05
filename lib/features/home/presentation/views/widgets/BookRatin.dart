import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.rating = 4.5, this.ratingCount = 0});

  final double rating;
  final int ratingCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const SizedBox(width: 6.3),
        Text(rating.toString(),
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.6,
          child: Text(
            '($ratingCount)',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
