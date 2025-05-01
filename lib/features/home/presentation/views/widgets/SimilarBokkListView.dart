import 'package:bookly/features/home/presentation/views/widgets/CustomBookItem.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              imageUrl: 'https://books.google.com/books/content?id=fEiwcmSztEoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
            ),
          );
        },
      ),
    );
  }
}
