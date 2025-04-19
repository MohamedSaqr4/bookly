import 'package:bookly/features/home/presentation/views/widgets/BookDetailsViewBodu.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody() ,
    );
  }
}