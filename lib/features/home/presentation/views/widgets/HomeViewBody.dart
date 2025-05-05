import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/NewestBookListView.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomAppbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/FeaturedBookListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                FeaturedBookListView(),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    'Newset Book',
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          //عشان معمل shrinkwrap true in list view
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: NewestBookListView(),
            ),
          ),
        ],
      ),
    );
  }
}
