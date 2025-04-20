import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    required this.text,
    this.borderRadius,
    this.fontSize,
  });
  final Color backGroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontSize: fontSize,
            )),
      ),
    );
  }
}
