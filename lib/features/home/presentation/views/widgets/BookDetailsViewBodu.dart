import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookDetailsSection.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/SimilarBookSection.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(bookModel:bookModel),
                const Expanded(child: SizedBox(height: 50)),
                const SimilarBookSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
