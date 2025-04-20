import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookAction.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookRatin.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookDetailsAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/CustomBookItem.dart';
import 'package:bookly/features/home/presentation/views/widgets/SimilarBokkListView.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 43),
                const Text('The Jungle Book', style: Styles.textStyle30),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18
                        .copyWith(fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(height: 14),
                const BookRating(),
                const SizedBox(height: 37),
                const BookAction(),
                const Expanded(child: SizedBox(height: 40)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You Can Also Like',
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 16),
                const SimilarBookListView(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
