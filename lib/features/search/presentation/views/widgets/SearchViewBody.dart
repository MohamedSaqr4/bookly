import 'package:bookly/features/search/presentation/views/widgets/SearchResultListView.dart';
import 'package:bookly/features/search/presentation/views/widgets/SearchResultsHeader.dart';
import 'package:bookly/features/search/presentation/views/widgets/custoSearchTextField.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchTextField(
                ),
                const SizedBox(height: 16),
                const SearchResultHeader(),
                const SizedBox(height: 16),
              ],
            ),
          ),
          const SliverFillRemaining(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
