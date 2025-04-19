import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BestSellerListViewItem.dart';
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
                    'Best Seller',
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
              child: BestSellerListView(),
            ),
          ),
        ],
      ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: BestSellerListViewItem(),
        );
      },
    );
  }
}
