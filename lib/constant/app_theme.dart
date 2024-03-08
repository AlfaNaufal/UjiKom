import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:ukom_app/util/app_themes.dart';

enum ThemeType { Conventional }

class AppTheme extends ChangeNotifier {
  ThemeType _themeType = ThemeType.Conventional;
  Locale currentLocale = Locale('id');

  String getImagePath() {
    if (_themeType == ThemeType.Conventional) {
      return 'assets/images/';
    } else {
      return 'assets/images/';
    }
  }

}


  class AppStyles {
  static final TextTheme textTheme1 = TextTheme(
    headline1: GoogleFonts.rubik(
      fontSize: 96,
      fontWeight: FontWeight.w300,
    ),
    headline2: GoogleFonts.rubik(
      fontSize: 60,
      fontWeight: FontWeight.w300,
    ),
    headline3: GoogleFonts.rubik(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.rubik(
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    headline5: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.rubik(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    subtitle1: GoogleFonts.rubik(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    subtitle2: GoogleFonts.rubik(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: GoogleFonts.rubik(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyText2: GoogleFonts.rubik(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    button: GoogleFonts.rubik(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    caption: GoogleFonts.rubik(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    overline: GoogleFonts.rubik(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
  );
  static final TextTheme textTheme2 = TextTheme(
    headline1: GoogleFonts.norican(
        fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.norican(
        fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.norican(fontSize: 48, fontWeight: FontWeight.w400),
    headline4: GoogleFonts.norican(
        fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headline5: GoogleFonts.norican(fontSize: 24, fontWeight: FontWeight.w400),
    headline6: GoogleFonts.norican(
        fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    subtitle1: GoogleFonts.norican(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    subtitle2: GoogleFonts.norican(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyText1: GoogleFonts.norican(
        fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyText2: GoogleFonts.norican(
        fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    button: GoogleFonts.norican(
        fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
    caption: GoogleFonts.norican(
        fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    overline: GoogleFonts.norican(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}
