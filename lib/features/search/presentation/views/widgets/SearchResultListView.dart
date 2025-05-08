import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/Custom_Erorr_Widget.dart';
import 'package:bookly/core/widgets/Custom_Loading_Indicator.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookListViewItem.dart';
import 'package:bookly/features/search/presentation/manger/search_book_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookInitial) {
          return const Center(
            child: Text(
              'Search for books',
              style: Styles.textStyle30,
            ),
          );
        } else if (state is SearchBookLoading) {
          return const CustomLoadingIndicator();
        } else if (state is SearchBookSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchBookFailure) {
          return CustomErorrWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
