import 'package:clong_coding/theme/app_color.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headline1 = GoogleFonts.openSans(
    fontSize: 34,
    letterSpacing: 0.22,
    height: 42/34,
    fontWeight: FontWeight.w700,
  );

  static TextStyle headline2 = GoogleFonts.openSans(
    fontSize: 28,
    letterSpacing: 0.18,
    height: 36/28,
    fontWeight: FontWeight.w600,
  );

  static TextStyle headline3 = GoogleFonts.openSans(
    fontSize: 24,
    letterSpacing: 0.14,
    height: 32/24,
    fontWeight: FontWeight.w600,
  );

  //TODO: Edit Headline - Origin(Font Awesome 5 Brands) But using open sans
  static TextStyle subtitle = GoogleFonts.openSans(
    fontSize: 30,
    letterSpacing: 0.32,
    height: 38/30,
    fontWeight: FontWeight.w400,
  );

  static TextStyle body = GoogleFonts.openSans(
    fontSize: 16,
    letterSpacing: -0.4,
    height: 24/16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle subhead = GoogleFonts.openSans(
    fontSize: 20,
    letterSpacing: 0.44,
    fontWeight: FontWeight.w300,
  );

  static TextStyle caption = GoogleFonts.openSans(
    fontSize: 12,
    letterSpacing: -0.24,
    height: 20/12,
    fontWeight: FontWeight.w300,
  );

  static TextStyle button = GoogleFonts.openSans(
    fontSize: 14,
    letterSpacing: 1.2,
    height: 16.41/14,
    fontWeight: FontWeight.w600,
  );
}