import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        const SizedBox(width: 6.3),
        Text('4.8',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(width: 5),
        Text(
          '(2133)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070),
          ),
        )
      ],
    );
  }
}
