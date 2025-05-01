import 'package:bookly/core/widgets/Custom_Erorr_Widget.dart';
import 'package:bookly/core/widgets/Custom_Loading_Indicator.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 4, right: 8.0),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.smallThumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErorrWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
