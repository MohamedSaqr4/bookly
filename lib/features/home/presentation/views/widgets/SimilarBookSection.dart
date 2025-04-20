import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/SimilarBokkListView.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('You Can Also Like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 16),
        const SimilarBookListView(),
      ],
    );
  }
}
