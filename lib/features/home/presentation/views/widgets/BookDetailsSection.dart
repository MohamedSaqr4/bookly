import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookAction.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookRatin.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.21),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.smallThumbnail,
          ),
        ),
        const SizedBox(height: 36),
        Text(
          bookModel.volumeInfo.title.toString(),
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.55,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? 'no author',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 8),
        const BookRating(
          rating: 4.3,
          ratingCount: 300,
        ),
        const SizedBox(height: 30),
        BookAction(bookModel: bookModel),
      ],
    );
  }
}
