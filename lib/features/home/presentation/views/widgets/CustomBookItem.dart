import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4, //rate between width and height
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          image: const DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
