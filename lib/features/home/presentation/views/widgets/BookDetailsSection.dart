import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookAction.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookRatin.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.21),
          child: const CustomBookImage(
            imageUrl: 'https://books.google.com/books/content?id=fEiwcmSztEoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
          ),
        ),
        const SizedBox(height: 36),
        const Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.55,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 8),
        const BookRating(
          rating: 4.3,
          ratingCount: 300,
        ),
        const SizedBox(height: 30),
        const BookAction(),
      ],
    );
  }
}
