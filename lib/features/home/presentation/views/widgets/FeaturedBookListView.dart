import 'package:bookly/features/home/presentation/views/widgets/CustomBookItem.dart';
import 'package:flutter/material.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 4, right: 8.0),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
