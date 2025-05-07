import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

void customSnackBar(context, String url) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Couldnt launch $url',
        style: Styles.textStyle18,
      ),
      duration: const Duration(seconds: 2),
    ),
  );
}
