import 'package:bookly/features/search/presentation/manger/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController controller;

  const CustomSearchTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) => fetchBooks(context, value),
      decoration: InputDecoration(
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () => fetchBooks(context, controller.text),
          icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 18),
        ),
      ),
    );
  }
}

void fetchBooks(BuildContext context, String value) {
  BlocProvider.of<SearchBookCubit>(context).fetcSearchedBooks(value);
}

OutlineInputBorder buildOutlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.white),
  );
}
