import 'package:bookly/features/home/presentation/views/widgets/BookListViewItem.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return  const Padding(
          padding: EdgeInsets.only(bottom: 20),
          // child: BookListViewItem(),
          child: Text('d'),
        );
      },
    );
  }
}
