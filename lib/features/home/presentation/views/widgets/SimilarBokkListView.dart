import 'package:bookly/core/widgets/Custom_Erorr_Widget.dart';
import 'package:bookly/core/widgets/Custom_Loading_Indicator.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/simillar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBooksCubit, SimillarBooksState>(
      builder: (context, state) {
        if (state is SimillarBooksSuccess) {
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
                    imageUrl:
                        'https://books.google.com/books/content?id=fEiwcmSztEoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                  ),
                );
              },
            ),
          );
        } else if (state is SimillarBooksFailure) {
          return CustomErorrWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
