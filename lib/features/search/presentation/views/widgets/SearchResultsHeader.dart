import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/manger/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultHeader extends StatelessWidget {
  const SearchResultHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
                  builder: (context, state) {
                    if (state is SearchBookLoading ||
                        state is SearchBookFailure ||
                        state is SearchBookSuccess) {
                      return const Text(
                        'Search Results',
                        style: Styles.textStyle18,
                      );
                    } else {
                      return const SizedBox.shrink();
                    }
                  },
                );

  }
}