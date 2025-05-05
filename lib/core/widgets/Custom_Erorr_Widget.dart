import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErorrWidget extends StatelessWidget {
  const CustomErorrWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
