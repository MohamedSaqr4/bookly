import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookDetailsViewBodu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimillarBooksCubit>(context).fetchSimillarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody(
        bookModel: widget.bookModel,
      )),
    );
  }
}
