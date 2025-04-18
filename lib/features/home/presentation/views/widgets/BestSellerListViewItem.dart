import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/AppRouter.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/BookRatin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4, //rate between width and height
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire ',
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGTSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.99 \$ ',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BookRating()
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
