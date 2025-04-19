import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
              ThemeData.dark().textTheme
              )),
      debugShowCheckedModeBanner: false,
      title: 'Bookly App',
    );
  }
}
