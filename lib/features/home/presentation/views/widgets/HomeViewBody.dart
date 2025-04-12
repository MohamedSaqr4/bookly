import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomAppbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/FeaturedBookListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBookListView(),
          SizedBox(height: 40),
          Text(
            'Best Seller',
            style: Styles.titleMeduim,
          )
        
        ],
      ),
    );
  }
}
